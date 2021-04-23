<template>
  <q-layout view="lHh Lpr lFf">
    <q-header elevated>
      <q-toolbar>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="leftDrawerOpen = !leftDrawerOpen"
        />

        <q-toolbar-title>
          Test
        </q-toolbar-title>
        <!-- user section -->

        <div class="q-pa-md" style="max-width: 350px;float:right">
    <q-expansion-item
      v-model="expanded"
      icon="perm_identity"
      label="User name"
      caption="Test"
    >
      
    </q-expansion-item>
  </div>
  </div>
      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      content-class="bg-grey-1"
    >
      <q-list>
        <q-item-label
          header
          class="text-grey-8"
        >
          PAYMENTS
        </q-item-label>
        <EssentialLink
          v-for="link in essentialLinks"
          :key="link.title"
          v-bind="link"
        />
        <div class="slimScrollDiv">
            <div class="sidebar-content" style="height: calc(100vh - 104px);">
                <ul class="ant-menu ant-menu-inline  ant-menu-light ant-menu-root" role="menu" aria-activedescendant="" tabindex="0">
                    <li class="ant-menu-item" >
                        <router-link to="/">
                            <icon name="home" class="fa-lg"> </icon>
                            <span class="nav-text"> Transactions </span>
                        </router-link>
                    </li>
                    <li class="ant-menu-item dropdown">
                        <a href="#" v-on:click.prevent="showDropDown1=!showDropDown1">
                            <icon name="gears" class="fa-lg"></icon>
                            <span class="nav-text"> Customers </span>
                        </a>
                    </li>
              
                        <li class="ant-menu-item">
                            <a href="/cluster">
                                <icon name="line-chart" class="fa-lg"></icon>
                                <span class="nav-text"> Payouts </span>
                            </a>
                        </li>
                   <li class="ant-menu-item" >
                        <router-link to="/regressor">
                            <icon name="bar-chart" class="fa-lg"></icon>
                            <span class="nav-text"> Balances </span>
                        </router-link>
                    </li>
                    <li class="ant-menu-item">
                        <a href="http://localhost:8088/maps/">
                            <icon name="map" class="fa-lg"></icon>
                            <span class="nav-text"> Subscriptions </span>
                        </a>
                    </li>
                
                    <li class="ant-menu-item dropdown">
                        <a href="#" v-on:click.prevent="showDropDown=!showDropDown">
                            <icon name="lock" class="fa-lg"></icon>
                            <span class="nav-text"> Payment plans </span>
                        </a>
                    </li>   
                    
                </ul>
                <q-item-label
          header
          class="text-grey-8"
        >
          COMMERCE
        </q-item-label>
        <ul><li class="ant-menu-item" >
                        <router-link to="/regressor">
                            <icon name="bar-chart" class="fa-lg"></icon>
                            <span class="nav-text"> Referrals </span>
                        </router-link>
                    </li>
                    <li class="ant-menu-item">
                        <a href="http://localhost:8088/maps/">
                            <icon name="map" class="fa-lg"></icon>
                            <span class="nav-text"> Audit logs </span>
                        </a>
                    </li>
                
                    <li class="ant-menu-item dropdown">
                        <a href="#" v-on:click.prevent="showDropDown=!showDropDown">
                            <icon name="lock" class="fa-lg"></icon>
                            <span class="nav-text"> Settings </span>
                        </a>
                    </li>   </ul>
            </div>
        </div>
        
        
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>

  
</template>

<script>
import EssentialLink from 'components/EssentialLink.vue'
export default {
  name: 'MainLayout',
  components: { EssentialLink },
  data () {
    return {
      leftDrawerOpen: false,
      essentialLinks: linksData
    }
  }
}
</script>
