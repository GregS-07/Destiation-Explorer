## Thought Process

### Accessibility 
 - I used alt tags for images to ensure that screed reader users understand what images or interactive icons represent.
 - I used semantic elements to make sure that navigation for the screen reader is easier. 
- I used hover states and appropriate cursor states for interactable elements to ensure that the visually impaired are clear what is being interacted with and whether it is interactable.

###  SEO
- I used a descending headings hierarchy.
- The use of meta data, such as description and tags for further and relevant reach.
- Alt text to understand the context of images.
- Responsive design was implemented as it is a factor in certain search engines.

### Dynamic Data Fetching
I used CraftCMS to handle the attraction entries and fetch these entries in order to display them. This ensured that the site was flexible and stayed current as attractions are being managed.

### Handling Filtering In JQuery
I decided to handle the filtering logic locally rather than using fetching the specific attractions directly from CraftCMS. 
I decided to do this because:

 -  It is quicker due to no waiting for additional requests.
 - Output is displayed as soon as processing is finished, with out requiring a page reload.
 - Reduced server load by gathering all necessary data as soon as page is loaded.
 - Creates precedent for other features to rely on already loaded data.
 
### Inline CSS
Although Tailwind was used for the majority of the styling, I chose to use inline CSS for the background colour of categories. This is because each category has a colour assigned to it via the CMS. Therefore, allowing for a custom colour that is easily manageable by both technical and non-technical users.

### Titles Over ID
I chose to use titles for identifying attractions rather than a alphanumeric ID. This is because it helps enforce the use of unique titles and helps identify duplicate entries. Additionally, the logic is 

## Assumptions

### Data Set
I assumed that the data set is small, thus I omitted adding a pagination feature and just made sure that there is no overflow and the container doesn't break under a larger amount of attractions.

### Filtering Behaviour
I assumed that selecting a category should only display attractions under that category and the selection of multiple categories results in the display of all attractions that fit under one of the selected categories, rather than stacking the conditions.

### Device Dimensions
I assumed that the target audience for this project uses all sorts of devices with different dimensions. As a result, the site adapts and remains fully functional for both mobile, desktop, etc.

## Improvements

### High Contrast
The contrast between the foreground and background of certain elements doesn't pass common tests, but it seemed that increasing the contrast resulted in a duller look. Therefore, the next step would be including a high-contrast mode (dark mode would also work) for the visually impaired.

### Scalability
The site was developed to handle a small dataset as you might find a small town. However, as more attractions are added or code is reused for a bigger destination, certain features could be added/amended. For example, pagination would be good as it is cleaner and more manageable for the end-user when browsing a long list of attractions. Another example would be using unique ID's for better performance and easier management. 

### Other Search Options
The site allows for filtering using categories as asked for in the brief, but other methods of search could be included. For example, inputting text and then matching it against titles and descriptions of attractions.
