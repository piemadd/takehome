module.exports = {
    async redirects() {
        return [
            {
                source: '/hello-vercel',
                destination: 'https://vercel.com',
                permanent: false, //for temp redirect
            },
        ]
    },
    reactStrictMode: true,
}