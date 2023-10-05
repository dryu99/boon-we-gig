# EventGong

TODOs
- [ ] create models in db for venues and artists. The idea is that we want to catalog all indie venue and artist info in a database and will update and collect data gradually.
- [ ] handle case where chatgpt output returns an array (i.e. a single post advertised multiple events)
  - [ ] also how do i handle scenario where insta post pre-promotions e.g. theyre advertising an event but dont have enough details yet 
    - i don't think it makes sense to add to the db. why advertise an event if you dont even know what time its gonna be at. we should ONLY COLLECT FULLY SCHEDULED EVENTS 


Notes
- i should have a personal guideline for scraping phase that i won't go 110% to collect data that is unreasonably difficult to collect e.g. only in image
- possible for instagram posts uploaded to be promotions but contain no data because its all in the photo. you can infer these empty event promotions from non-promotion posts via the props
- a lot of phase 1 is just going to be finding edge cases with posts and making the prompt smarter



I'm going to give you some example text from Instagram posts that are meant to be promotions for underground music events in South Korea. I want you try to extract the following data (typescript):

{  
  eventName: string;
  openDateTime?: string; // the time the doors to the event opens (use ISO format)
  startDateTime: string; // the time the event actually starts (use ISO format)
  preSalePrice?: number; // the price of an early bird ticket
  doorPrice: number; // the price you would pay if you're paying at the venue
  type?: string; // the type of music event. Choose either "concert", "dj", "club", or null if unsure
  artists: string[] // names of the artists performing
  warning?: string[] // only include if you're unsure about something e.g. post says start date is "2023.10.06 Sat" but it should be a Friday (It's possible for post uploaders to make mistakes). If there are multiple things you're unsure about, add multiple warnings to the array.
}

Some notes to keep in mind:
- Return the extracted data back to me in JSON format
- In your response ONLY return JSON. Don't give me any explanations or comments.
- For nullable fields make sure to explicitly set null in output JSON instead of excluding the field.
- It's possible for the posts to be in different languages. If it is make sure to keep eventName and artist names in the original language. You should keep warnings in english though.
  

Ready?


Now here's the Instagram post text to extract from:


____

Provide JSON data from Instagram posts promoting underground music events. Extract:

```typescript
{
  eventData?: {
    openDateTime?: string; // ISO format
    startDateTime: string; // ISO format
    earlyBirdPrice?: number; 
    doorPrice: number;
    eventType?: "concert" | "dj" | null;
    artists: {
      name: string; // preserve original language
      genre?: string;
    }[];
  }
}
```

Strict guidelines when extracting data:
- Don't prettify the JSON
- If you detect that the post is promoting multiple events set eventData to null
- If you detect that the post isn't promoting anything set eventData to null


  // eventName?: string; // Include only if explicitly mentioned in the post. Don't infer or combine names.

Edge case examples:
- post with full data: https://www.instagram.com/p/Cx95Ti7L6Xl/
- post with multiple events: https://www.instagram.com/p/Cxw_37brAPc/
- 