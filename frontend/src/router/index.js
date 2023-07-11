import { createRouter, createWebHistory } from "vue-router"
import Home from '../views/Home.vue'

const routes = [
    { 
        path: '/',
        name: 'Home',
        // redirect: '/login', 
        // component: () => import('../components/DefaultLayout.vue')
        component: () => import('../components/TheHeader.vue')
        // component: () => import('../components/TheBoardGame.vue')

    }
    
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router