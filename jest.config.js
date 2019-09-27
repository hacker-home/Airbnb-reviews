module.exports = {
  testRegex: "(/__tests__/.*|\\.(test|spec))\\.(js|jsx)$",
  moduleFileExtensions: [
    "js",
    "json",
    "jsx"
  ],
  setupFilesAfterEnv: [
    "./node_modules/jest-enzyme/lib/index.js"
  ],
  transform: {
    "^.+\\.js$": "babel-jest",
    "^.+\\.jsx$": "babel-jest",
    ".+\\.(css|styl|less|sass|scss)$": "jest-transform-css"
  },
  moduleNameMapper: {
    "\\.(jpg|jpeg|png|gif|eot|otf|webp|svg|ttf|woff|woff2|mp4|webm|wav|mp3|m4a|aac|oga)$": "<rootDir>/__mocks__/fileMock.js",
    "\\.(css|less)$": "identity-obj-proxy"
  }
}