export default [
    {
      id: 'welcome',
        title: 'Click on this to go to first question!',
      text: [
        `
        <p>
       
        </p>
        `
      ],
      attachTo: { element: '.step1', on: 'bottom' },
      // classes: 'shepherd shepherd-welcome',
      classes: 'custom-class-name-1 custom-class-name-2',
      highlightClass: 'highlight',
      scrollTo: true,
      showCancelLink: true,
      buttons: [
        {
          type: 'cancel',
          classes: 'shepherd-button-secondary',
          text: 'Exit'
        },
        {
          type: 'next',
          text: 'Next'
        }
      ]
    },
    {
      id: 'installation',
      title: 'Click on this to go to previous question!',
      text: [
        `
        <p>
        
        </p>
        `
      ],
      attachTo: { element: '.step2', on: 'bottom' },
      classes: 'custom-class-name-1 custom-class-name-2',
      highlightClass: 'highlight',
      scrollTo: true,
      showCancelLink: true,
      buttons: [
        {
          type: 'back',
          classes: 'shepherd-button-secondary',
          text: 'Back'
        },
        {
          type: 'next',
          text: 'Next'
        }
      ]
    },
    {
      id: 'usage',
      title: 'Click on the numbers to go to that question!',
      text: [
        `
        <p>
        
        </p>
        `
      ],
      attachTo: { element: '.step3', on: 'bottom' },
      classes: 'custom-class-name-1 custom-class-name-2',
      highlightClass: 'highlight',
      scrollTo: true,
      showCancelLink: true,
      buttons: [
        {
          type: 'back',
          classes: 'shepherd-button-secondary',
          text: 'Back'
        },
        {
          type: 'next',
          text: 'Next'
        }
      ]
    },
    {
      id: 'centered-example',
      title: 'Click on this to go to next question!',
      text: [
        `
        <p>
        
        </p>
        `
      ],
      attachTo: { element: '.step4', on: 'bottom' },
      buttons: [
        {
          type: 'back',
          classes: 'shepherd-button-secondary',
          text: 'Back'
        },
        {
          type: 'next',
          text: 'Next'
        }
      ]
    },
    {
      id: 'followup',
      title: ' Click on this to go to last question!',
      text: [
        `
        <p>
       
        </p>
        `
      ],
     attachTo: { element: '.step5', on: 'top' },
      scrollTo: true,
      buttons: [
        {
          type: 'back',
          classes: 'shepherd-button-secondary',
          text: 'Back'
        },
        {
          type: 'next',
          text: 'Done'
        }
      ]
    },
    {
      id: 'followup',
      title: ' Yay! you completed the tour.',
      text: [
        `
        <p>
        
        </p>
        `
      ],
      scrollTo: true,
      buttons: [
        {
          type: 'back',
          classes: 'shepherd-button-secondary',
          text: 'Back'
        },
        {
          type: 'next',
          text: 'Finish'
        }
      ]
    }
  ];