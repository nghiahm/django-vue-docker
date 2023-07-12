import { createRouter, createWebHistory } from 'vue-router'


const routes = [
    { 
        path: '/',
        name: 'Home',
        component: () => import('../views/TheHome.vue')
    },
    { 
        path: '/footer',
        component: () => import('../components/TheFooter.vue')
    },
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router