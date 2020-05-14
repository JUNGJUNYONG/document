import React from "react";

export default class Contents extends React.Component {
  render() {
    return (
      <div className="contents-memo">
        <div className="memo_container">
          <form className="container_memo-form">
            <input className="container_memo-form memo" type="textarea"></input>
          </form>
        </div>
        {/* <div>
          <form className="contents-memo_momo-form">
            <input className="snip1535 hover" type="textarea"></input>
          </form>
        </div> */}
      </div>
    );
  }
}
