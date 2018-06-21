import React from "react";
import ReactDOM from "react-dom";
import axios from "axios";
import FeatureRequest from "./feature_request";

class FeatureRequestVoting extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      feature_requests: []
    };
  }

  componentDidMount() {
    axios
      .get("/feature_requests.json")
      .then(response => this.setState({ feature_requests: response.data }));
  }

  handleVote(vote, feature_request_id) {
    axios
      .post(`/feature_requests/${feature_request_id}/request.json`, {
        vote: vote
      })
      .then(response => {
        const updated_feature_request = response.data;
        const { feature_requests } = this.state;
        const updated = feature_requests.map(
          feature_request =>
            feature_request.id == feature_request_id
              ? updated_feature_request
              : feature_request
        );
        this.setState({ feature_requests: updated });
      });
  }

  render() {
    return (
      <div>
        {this.state.feature_requests.map(feature_request => (
          <FeatureRequest
            key={feature_request.id}
            {...feature_request}
            handleUpvote={this.handleVote.bind(this, true)}
            handleDownvote={this.handleVote.bind(this, false)}
          />
        ))}
      </div>
    );
  }
}

ReactDOM.render(
  <FeatureRequestVoting />,
  document.getElementById("feature-requests-app")
);
