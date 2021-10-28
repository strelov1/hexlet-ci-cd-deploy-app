module.exports = {
  apps : [{
    name: "app",
    script: "{{ BASE_PATH }}/current/index.js",
    env: {
      NODE_ENV: "prodcution",
      PORT: "{{ PORT }}",
    },
  },
  ]
}