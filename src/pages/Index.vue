<template>
  <q-page >
     <!-- notifications -->
  <div class="q-pa-md q-gutter-md">
   

    <q-btn dense round flat icon="email">
      <q-badge color="red" floating transparent>
        4
      </q-badge>
    </q-btn>

    
  </div>
    
    <!-- dropdown section -->
    
     <div class="q-pa-md">
    <q-toggle v-model="menu" label="Live" />

    <q-btn-dropdown
      v-model="menu"
      class="glossy q-ml-lg"
      color="primary"
      label="English"
    >
      <q-list>
        <q-item clickable v-close-popup @click="onItemClick">
          <q-item-section avatar>
            <q-avatar icon="folder" color="primary" text-color="white" />
          </q-item-section>
          <q-item-section>
            <q-item-label>French</q-item-label> 
          </q-item-section>
          <q-item-section side>
            <q-icon name="info" color="amber" />
          </q-item-section>
        </q-item>

        <q-item clickable v-close-popup @click="onItemClick">
          <q-item-section avatar>
            <q-avatar icon="assignment" color="secondary" text-color="white" />
          </q-item-section>
          <q-item-section>
            <q-item-label>Spanish</q-item-label>
          </q-item-section>
          <q-item-section side>
            <q-icon name="info" color="amber" />
          </q-item-section>
        </q-item>
      </q-list>
    </q-btn-dropdown>
  </div>

  <h6 style="color:#ffd633">Hey User</h6> 
   <h5>Your dummy dashboard</h5> 

  <!-- circular progress bar -->
    <div>
      <h6>Success rate</h6>
   <q-circular-progress
      show-value
      font-size="12px"
      :value="value"
      size="50px"
      :thickness="0.22"
      color="teal"
      track-color="grey-3"
      class="q-ma-md"
    >
      {{ value }}%
    </q-circular-progress></div>

    <!-- chat section -->
     
   
     <div class="q-pa-md row justify-center" style="float:right">
    <div style="width: 100%; max-width: 400px">
      <q-card>
      <q-card-section>
         <div style="clear: both">
    <h6 style="float: center">Messages</h6>
   
</div>
<br><br><br><br>
      <q-chat-message
        name="James Robinson"
        stamp="Jan 2, 12:31pm"
        :text="['I need some software maintenance']"
        sent
        text-color="white"
        bg-color="primary"
      >
        <template v-slot:avatar>
          <img
            class="q-message-avatar q-message-avatar--sent"
            src="https://cdn.quasar.dev/img/avatar4.jpg"
          >
        </template>
      </q-chat-message>

      <q-chat-message
        name="Eseosa Igbinobaro"
        :text="['I got your email and...']"
        bg-color="amber"
      >
        <template v-slot:avatar>
          <img
            class="q-message-avatar q-message-avatar--received"
            src="https://cdn.quasar.dev/img/avatar2.jpg"
          >
        </template>

        <q-spinner-dots size="2rem" />
      </q-chat-message> </q-card-section>
    </q-card>
    </div>
  </div>

  <!-- bar chart -->
  
  
  </q-page>
</template>

<script>

export default {
  data () {
    return {
      value: 98
      
    }
  }
 
}
</script>
