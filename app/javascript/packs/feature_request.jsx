import React from "react";

class FeatureRequest extends React.Component {
  render() {
    const {
      id,
      name,
      details,
      difficulty,
      upvotes,
      downvotes,
      created_by_user_id,
      handleUpvote,
      handleDownvote
    } = this.props;
    return (
      <div className="card-item feature-request">
        <div className="grid-x">
          <div className="small-2 cell">
            <div className="grid-y">
              <div className="cell">
                <span
                  className="button tiny no-margin"
                  onClick={e => handleUpvote(id)}
                >
                  <i className="fa fa-thumbs-o-up" aria-hidden="true" />
                </span>
                <span className="left-margin-5">
                  <small>Upvotes ({upvotes})</small>
                </span>
              </div>
              <div className="cell">
                <span
                  className="button secondary tiny no-margin"
                  onClick={e => handleDownvote(id)}
                >
                  <i className="fa fa-thumbs-o-down" aria-hidden="true" />
                </span>
                <span className="left-margin-5">
                  <small>Downvotes ({downvotes})</small>
                </span>
              </div>
            </div>
          </div>
          <div className="small-10 cell">
            <div className="row">
              <div className="medium-12 columns">
                <div className="name">{name} </div>
              </div>
            </div>
            <div className="row">
              <div className="medium-12 columns">
                <div className="details">{details || "No Details"} </div>
              </div>
            </div>
            <div className="metadata">
              <span className="info">Difficulty: {difficulty} / 10</span>
              <span className="info">Created By: {created_by_user_id}</span>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default FeatureRequest;
