const seconds = 10
export const refreshFrequency = seconds * 1000

export const command = 'shortcuts run "Office Humidity Level" | xargs'

export const className = `
  font-family: system-ui;
  margin: 1%;
  opacity: .5;
  @media (prefers-color-scheme: dark) {
    color: #fff;
  }
`

export function render({ output }) {
  return <h4>{output}%</h4>
}
