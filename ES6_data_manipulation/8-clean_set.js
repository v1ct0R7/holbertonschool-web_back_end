export default function cleanSet(set, startString) {
  const values = [...set];

  return values
    .filter((value) => value.startsWith(startString))
    .map((value) => value.slice(startString.length))
    .join("-");
}
