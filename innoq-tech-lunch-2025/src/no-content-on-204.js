module.exports = function (targetVal, opts, paths) {
  if (typeof targetVal === "object" && "content" in targetVal) {
    return [
      {
        message: "Responses with status code 204 must not have a content property."
      }
    ];
  }
  return [];
};
