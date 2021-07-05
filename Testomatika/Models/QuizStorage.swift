//
//  QuizStorage.swift
//   TestomatikaTest
//
//  Created by Admin on 13.06.2021.
//

import Foundation

class QuizStorage {
    
    static var quizzes: [Quiz] {
        [
            Quiz(
                title: "How do you know that your boyfriend is cheating on you?",
                description: "Do you have mixed feelings and want to know if your partner is really not cheating on you? Take this test to see if your boyfriend is being honest with you. It only takes a few minutes to complete. Are you ready to know what he's thinking?",
                questions: [
                    Question(text: "How often does your boyfriend spend the night at home?", answers: [
                        Answer(text: "Every night", scrore: 3),
                        Answer(text: "He always sleeps, but he comes very late, usually after midnight", scrore: 2),
                        Answer(text: "We do not live together", scrore: 1),
                        Answer(text: "Recently, it's been much rarer", scrore: 0)
                    ]),
                    Question(text: "How often does your boyfriend spill compliments on you?", answers: [
                        Answer(text: "Hardly ever, but he has not been generous in this regard before", scrore: 1),
                        Answer(text: "Quite often", scrore: 2),
                        Answer(text: "Less and less every day", scrore: 0)
                    ]),
                    Question(text: "Does your boyfriend have sudden mood swings?", answers: [
                        Answer(text: "Yes, he’s been acting strange lately", scrore: 0),
                        Answer(text: "No, at least not more often than usual", scrore: 1),
                        Answer(text: "Never ever", scrore: 2)
                    ]),
                    Question(text: "Does your boyfriend trust you with his phone?", answers: [
                        Answer(text: "No, he doesn't, but I wouldn't give him mine either, there has to be at least some privacy", scrore: 0),
                        Answer(text: "Of course, I even know all his social media passwords", scrore: 2),
                        Answer(text: "I didn’t ask, and he didn’t offer", scrore: 1),
                    ]),
                    Question(text: "Have there been any external changes with your boyfriend?", answers: [
                        Answer(text: "And not only external, recently he's become a fan of healthy lifestyle", scrore: 0),
                        Answer(text: "In my opinion, insignificant, just changed his hairstyle (or something else...)", scrore: 1),
                        Answer(text: "No, I did not notice anything like this", scrore: 2)
                    ]),
                    Question(text: "How often does your boyfriend criticize you?", answers: [
                        Answer(text: "Much more often, although he used to like everything", scrore: 0),
                        Answer(text: "No more than usual", scrore: 1),
                        Answer(text: "It's hard to expect criticism from him, he's usually satisfied with everything", scrore: 2)
                    ]),
                    Question(text: "How are you doing with sex?", answers: [
                        Answer(text: "Our totem animals were definitely rabbits, if you know what I mean", scrore: 3),
                        Answer(text: "Sex has never been our top priority, so it is quite rare", scrore: 2),
                        Answer(text: "It used to be much more common", scrore: 1),
                        Answer(text: "We have never had sex yet", scrore: 0)
                    ]),
                    Question(text: "Has your boyfriend been stuck at work a lot lately?", answers: [
                        Answer(text: "Yes, sometimes this also happened before", scrore: 1),
                        Answer(text: "Yes, and it lingers for a long time", scrore: 2),
                        Answer(text: "I think this is normal practice", scrore: 0)
                    ]),
                    Question(text: "Do you notice inconsistencies in his stories?", answers: [
                        Answer(text: "No", scrore: 2),
                        Answer(text: "Of course, sometimes I just catch a lie", scrore: 0),
                        Answer(text: "Sometimes he gets tired and confuses everything", scrore: 1)
                    ]),
                    Question(text: "Does he give you gifts for no reason?", answers: [
                        Answer(text: "No, you can't get that from him", scrore: 1),
                        Answer(text: "Yes, and I was very surprised by this", scrore: 0),
                        Answer(text: "He constantly tries to pamper me", scrore: 2)
                    ]),
                    Question(text: "Don't you have a heart-to-heart talk anymore?", answers: [
                        Answer(text: "No, we were just having a heart-to-heart talk", scrore: 2),
                        Answer(text: "Yes, it's not the right time, it's not relevant anymore", scrore: 0),
                        Answer(text: "We've never really done it", scrore: 1)
                    ]),
                    Question(text: "Do you spend your weekends separately?", answers: [
                        Answer(text: "It depends", scrore: 2),
                        Answer(text: "Yes, I really want to relax with him, but alas", scrore: 0),
                        Answer(text: "That's what weekends are for, to take a break from each other", scrore: 1)
                    ]),
                    Question(text: "Does your partner have new hobbies?", answers: [
                        Answer(text: "This is normal practice for him", scrore: 1),
                        Answer(text: "Yes, and he just threw himself into it", scrore: 2),
                        Answer(text: "There is nothing like that", scrore: 0)
                    ]),
                    Question(text: "Have you begun to argue with him often?", answers: [
                        Answer(text: "No - this is not about us", scrore: 2),
                        Answer(text: "Yes, and he starts first", scrore: 0),
                        Answer(text: "Once in a blue moon", scrore: 1)
                    ])
                ],
                backgroundItem: "1",
                backgroundView: "11",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 0...10,
                        title: "99% betrays",
                        description: """
                            Unfortunately, your partner is not completely honest with you and is likely having a new relationship.
                            
                            One of the biggest blows that can happen to us in a long-term relationship with a person is infidelity. Every betrayal is a drama that turns out to be mostly accidental, and a fierce struggle begins between the mind and the heart.
                            
                            When looking for answers as why your partner is cheating, trust your feelings first. The betrayal of your other half is not always obvious, but factors such as overwork, nervousness, increased/decreased sexual appetite, frequent travel, spending time outside the home and not with you speak for themselves.
                            
                            Most women in retrospect say they have seen the symptoms of cheating, but either ignore it or find an explanation for it. Instead of dismissing the signs of cheating, have an honest conversation with your partner about your feelings. Don't forget that you are in charge of this unpleasant situation right now, and you have to take care of yourself.
                            """
                    ),
                    ResponseRanges(
                        range: 11...18,
                        title: "There's a possibility that he's cheating",
                        description: """
                            Oops! Maybe your loved one is hiding something from you. The reasons for cheating can be different: curiosity, looking for new experiences, the desire to try something new, adrenaline andexcitement about sensations, or the desire to find passion and hobbies that have long since died in the relationship.
                            
                            More often, infidelity comes from feeling neglected by the other person or because of the monotony in the relationship.
                            
                            It is especially worth noting if the partner: avoids establishing an intimate relationship; spends more time on the computer and phone and is clearly confused when asked what he is doing andwho he is talking to; goes to work earlier and returns later; often does not answer the phone; does not give you reasonable access to his phone; and behaves mysteriously and incomprehensibly.
                            
                            If you are not 100% sure of the fact of infidelity, there is no need to immediately accuse your beloved. If infidelity turns out to be just a false fact, you can ruin your relationship with unfounded accusations.
                            
                            A good way is to distance yourself from your man for a while and set aside time for peace, reflection, and solitude.
                            """
                    ),
                    ResponseRanges(
                        range: 19...23,
                        title: "Work on trust",
                        description: """
                            You should think about your relationship. They seem to be going through a difficult time. Thoughts that your partner is cheating on you indicates that it is time to do something about it. You may want to think hard about why you are having this thought.
                            
                            Every relationship is hard work. Nevertheless, you must remember that the initiative must come from both sides. To analyze the situation, remember when things started to change, and think about what caused it.
                            
                            Talk to your partner, ask why this is happening, explain what is important to you in the relationship, and see if there is any change. Remember, the key to a strong relationship is trust, losing it once, you can forget about it forever.
                            
                            So give both you and your partner some personal space. You should be able to be alone with yourself and enjoy that time. This does not mean that you treat each other badly. This shows that you respect each other.
                            
                            Being overly suspicious and keeping track of every move can ruin everything. You even run the risk of pushing your partner to cheat. The main thing is to not forget that in everything there should be comfort, not suspicion, in a relationship. Think about it.
                            """
                    ),
                    ResponseRanges(
                        range: 24...30 ,
                        title: "Work on trust",
                        description: """
                            You are very lucky to have a truly faithful and loving partner. He looks at you as a perfect pictureand does not even think to look at another woman. You are the most important woman in his life, so develop your partnership, because such relationships do not happen often.
                            
                            We recommend that you do not suspect your boyfriend of treason, but support him and give himtime and space for personal needs. And of course, you should not arrange a “test” by disappearing without a trace for a few days. Some girls wrongly believe that in this way, you cancheck the sincerity of the feelings of the beloved - if he is serious, then he will look for his lady - but men will see a slightly different end to this situation - some will think that his girlfriend has fallen out of love and wants to break off the relationship, while others simply will not run after a girl who does not appreciate their feelings.
                            """
                    )
                ]
            ),
            Quiz(
                title: "You have a great relationship, no doubt",
                description: "Is it interesting to find out what men think of you and get useful recommendations that will help improve your personal life? Then take this test! It will help you understand your strengths and weaknesses, and maybe soon you will find your true love. Are you ready for a change? Let's begin.",
                questions: [
                    Question(text: "Do you listen to your friends and relatives when choosing a partner?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Probably", scrore: 2)
                    ]),
                    Question(text: "Do you love yourself?", answers: [
                        Answer(text: "No", scrore: 1),
                        Answer(text: "I'd rather be loved by others", scrore: 2),
                        Answer(text: "Yes, of course", scrore: 3)
                    ]),
                    Question(text: "Are men interested in you?", answers: [
                        Answer(text: "More often than I'd like", scrore: 2),
                        Answer(text: "And how much more!", scrore: 3),
                        Answer(text: "Didn't notice", scrore: 1)
                    ]),
                    Question(text: "To win a man's attention you need...", answers: [
                        Answer(text: "Look attractive", scrore: 3),
                        Answer(text: "Ask for help", scrore: 2),
                        Answer(text: "Talk to him", scrore: 1),
                    ]),
                    Question(text: "Do you make friends easily?", answers: [
                        Answer(text: "Sometimes", scrore: 3),
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "What is most important to you when you are going to visit somebody or go to the theater?", answers: [
                        Answer(text: "That your demeanor and the way you look make a good impression", scrore: 1),
                        Answer(text: "Not look vulgar", scrore: 2),
                        Answer(text: "Like yourself", scrore: 3)
                    ]),
                    Question(text: "What motivates you in your work?", answers: [
                        Answer(text: "Praise and recognition", scrore: 1),
                        Answer(text: "Financial benefit", scrore: 2),
                        Answer(text: "Interest in the case", scrore: 3)
                    ]),
                    Question(text: "How do you behave in an unfamiliar company?", answers: [
                        Answer(text: "You feel at ease", scrore: 3),
                        Answer(text: "You feel uncomfortable and restless ", scrore: 2),
                        Answer(text: "You find it difficult to keep up a conversation", scrore: 1)
                    ]),
                    Question(text: "Which statement fits you best?", answers: [
                        Answer(text: "I'm very susceptible to influence", scrore: 1),
                        Answer(text: "I am stubborn", scrore: 2),
                        Answer(text: "I can give in when I'm especially affectionate", scrore: 3)
                    ]),
                    Question(text: "Do you compare yourself to other women??", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 3),
                        Answer(text: "Sometimes", scrore: 2)
                    ]),
                    Question(text: "How often do you hear compliments from others?", answers: [
                        Answer(text: "Very often", scrore: 1),
                        Answer(text: "It happens", scrore: 2),
                        Answer(text: "Never", scrore: 3)
                    ]),
                    Question(text: "Do you have a favorite hobby?", answers: [
                        Answer(text: "Yes, of course", scrore: 3),
                        Answer(text: "I find this question hard to answer", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Do you find yourself attractive?", answers: [
                        Answer(text: "Yes, of course", scrore: 3),
                        Answer(text: "I find this question hard to answer", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Do you like flirting with men?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Sometimes", scrore: 2)
                    ])
                ],
                backgroundItem: "2",backgroundView: "22",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 14...20,
                        title: "Men don't notice you work on yourself",
                        description: """
                            You have a lot of complexities, but you are still beautiful! You appreciate beauty, but it is not the most important thing for you. Besides appearance, your personality is also important to you.You have problems with the opposite sex, as they often do not see you as a woman and leave you in the friendzone. Perhaps you should pay attention to your appearance, emphasize your facial features with natural makeup, work on your style, and never doubt your beauty. That’s how you will become noticeable to men.
                            
                            Whoever feels their attractiveness becomes attractive. If a woman is a firm believer in her beauty, she will eventually manage to convince everyone around her of it.Accept yourself with gratitude and improve yourself, first and foremost for yourself! A confident woman will never publicly criticize her flaws. She exudes a vibe of confidence and sexiness, andmen want just such women.
                            """
                    ),
                    ResponseRanges(
                        range: 21...28,
                        title: "You are quite attractive",
                        description: """
                            Raise your head higher, because we have good news for you - you are beautiful so don’t you forget it!According to men, you are cute.
                            
                            They like chatting with you, but more often treat you as a good friend than a potential girl. If you want them to see the other side of yourself, you need to work on your style a bit. From time to time use, for example, red lipstick to attract the attention of the opposite sex. For loose hair, a smile from ear to ear will immediately leave your friendship zone.
                            
                            The stronger sex prefers female girls who allow a man to be courageous. Knowing a woman's location, taking care of her, helping her, feeling big and strong is his job and pleasure.A woman who notices the good looks at the world with kind eyes can empathize and love and attract people. Men who are interested in a long-term relationship are looking for warmth in theirpartner
                            """
                    ),
                    ResponseRanges(
                        range: 29...36,
                        title: "Work on trust",
                        description: """
                            If you asked foreign guys on the street what they think of you, they would say that you are wonderful. You have something that attracts the opposite sex. Men love the way you dress, howyou behave, and how you act in unfamiliar situations. You are natural, you are not pretending to be anyone, you are not surprised by a seductive outfit and tons of makeup.
                            
                            At the same time, you look like the girl next door, and your beautiful smile encourages the opposite sex to flirt with you.Analyzing which men you like and who just harass you can help you decide what’s best. It is possible that you are only interested in one particular type of man, and yet this type of man is not suitable for you. You should examine yourself to better understand your preferences, so it will be easier for you to find your soulmate and build a long-term relationship.
                            """
                    ),
                    ResponseRanges(
                        range: 37...42,
                        title: "You are the goddess of beauty",
                        description: """
                            You are sure of your beauty, you know your worth, and you know how to gracefully present yourself. You are like a magnet for the opposite sex. Your natural and true beauty can attract almost anyone.
                            
                            An attractive woman is not afraid of her desires and does not hesitate to tell a man exactly what she wants at the moment. Men like open, sociable, interesting interlocutors, but at the same time those who do not pretend to be a know-it-all. The goddess of beauty will be witty, but not incomprehensible. She listens with interest to what a person is talking about, allows him to feel inventive, dexterous, and strong. And next to such a woman, he will have a desire to be. Your gestures are fluid and graceful, with perfect posture and an amazing gait. By your movements, you can see how well you treat yourself, and men, in turn, dream of building a relationship with you.
                            
                            The main thing is not to forget that beauty is only one trump card; there is also talent, intelligence, and personality.
                            """
                    )
                ]
            ),
            Quiz(
                title: "Are You Ready for Motherhood?",
                description: "Few people are truly ready for motherhood. It's a really big step in every woman's life. Find out what kind of mom you're going to be and if that's a priority for you right now. If you have any doubts, maybe our test will help you to better understand yourself. Let's get started!",
                questions: [
                    Question(text: "Did you often play \"Mother's Daughters\" as a child?", answers: [
                        Answer(text: "All the time", scrore: 3),
                        Answer(text: "No, I didn't like that game", scrore: 2),
                        Answer(text: "I played it if I had no other choice", scrore: 1)
                    ]),
                    Question(text: "Do you want to have a baby?", answers: [
                        Answer(text: "Mmmm... No", scrore: 1),
                        Answer(text: "I'm still thinking about it", scrore: 2),
                        Answer(text: "I really want to have a baby", scrore: 3)
                    ]),
                    Question(text: " How do you feel about the fact that you can have various new sensations for nine months, and not always pleasant ones?", answers: [
                        Answer(text: "I'm not worried about it, because it's an integral part of the process", scrore: 3),
                        Answer(text: "Not at all tempted by such a prospect", scrore: 1),
                        Answer(text: "I don't know yet, I haven't figured it out", scrore: 2)
                    ]),
                    Question(text: "Have you thought about how you will raise your child?", answers: [
                        Answer(text: "Yes, I already have a plan", scrore: 3),
                        Answer(text: "I think my parents are gonna help me with it", scrore: 2),
                        Answer(text: "Not yet", scrore: 1),
                    ]),
                    Question(text: "Are you ready to change your lifestyle, habits, and routines for the sake of your baby?", answers: [
                        Answer(text: "Not all, but some", scrore: 2),
                        Answer(text: "No, it's very hard", scrore: 1),
                        Answer(text: "Yes, of course", scrore: 3)
                    ]),
                    Question(text: "Do you have any feelings of insecurity or fear that you won't be able to cope with?", answers: [
                        Answer(text: "Sometimes I doubt myself, but I have the support of my family", scrore: 2),
                        Answer(text: "There's no doubt, I can definitely do it", scrore: 3),
                        Answer(text: "That feeling never went away", scrore: 1)
                    ]),
                    Question(text: "How long have you and your partner been together?", answers: [
                        Answer(text: "No more than half a year", scrore: 1),
                        Answer(text: "More than a year", scrore: 2),
                        Answer(text: "More than three years", scrore: 3)
                    ]),
                    Question(text: "How do you feel about other people's children?", answers: [
                        Answer(text: "I feel it's time for me to get one, too", scrore: 3),
                        Answer(text: "Usually just a little irritation", scrore: 1),
                        Answer(text: "I don't feel anything, as long as they're calm", scrore: 2)
                    ]),
                    Question(text: "Who do you want more - a girl or a boy?", answers: [
                        Answer(text: "A boy", scrore: 2),
                        Answer(text: "A girl", scrore: 2),
                        Answer(text: "I don't care who it is, as long as it's my baby", scrore: 3)
                    ]),
                    Question(text: "Are you still okay with \"going out\"?", answers: [
                        Answer(text: "Yes, I like all sorts of parties and clubs", scrore: 1),
                        Answer(text: "Staying at home is not an option, you have to go out sometimes, but you don’t have to do anything crazy", scrore: 2),
                        Answer(text: "No, it's better to sit at home in peace and quiet", scrore: 3)
                    ]),
                    Question(text: "Do you ever have thoughts that your man isn't good enough for you?", answers: [
                        Answer(text: "Never", scrore: 3),
                        Answer(text: "Sometimes", scrore: 2),
                        Answer(text: "More and more often I think about it", scrore: 1)
                    ]),
                    Question(text: "Is there a calm environment around you, or are there frequent stressful situations?", answers: [
                        Answer(text: "I get depressed a lot", scrore: 1),
                        Answer(text: "I am completely emotionally stable", scrore: 3),
                        Answer(text: "Situations are different, but I do not allow myself to get depressed, though sometimes I want to", scrore: 2)
                    ]),
                    Question(text: "How would you rate your physical health?", answers: [
                        Answer(text: "Not really good. I get sick a lot and not just with colds", scrore: 1),
                        Answer(text: "Sometimes I get sick, but I try not to get caught with a cold", scrore: 2),
                        Answer(text: "Can't remember the last time I was sick at all. Never had any complaints about my health", scrore: 3)
                    ]),
                    Question(text: "Are you ready to take responsibility for your baby's life and wellbeing?", answers: [
                        Answer(text: "Absolutely!", scrore: 3),
                        Answer(text: "That sounds kind of scary..", scrore: 2),
                        Answer(text: "I guess not yet", scrore: 1)
                    ])
                ],
                backgroundItem: "3",
                backgroundView: "33",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 14...20,
                        title: "You are not ready yet",
                        description: """
                            Your answers show that you are far from being ready for motherhood, but don't worry, you will start a family in the future."Do you want to hold hands?" "No. Thank you.
                            
                            "Right ... How many times have you avoided taking care of your sister, your brother, your friend's child? But on the other hand, as the years fly by, most of their friends already have kids, and parents can't wait to become grandparents. But don't mind if everyone around you asks you about the baby, and you, in turn, dread becoming a mom. You know that motherhood should be something special, but no one will deny that it is also difficult, because it is painstaking work - day and night. So it's worth waiting and finding the best time and conditions for you to have a baby.
                            
                            If you feel that at this point you are not ready to have a baby and can't handle motherhood, then postpone this journey until you consciously come to it. There’s no shame, you'll feel like you're finally ready to be a mom sooner or later.
                            """
                    ),
                    ResponseRanges(
                        range: 21...28,
                        title: "There's a possibility that he's cheating",
                        description: """
                            Although it might seem that a stable professional and family situation and an appropriate partner should be sufficient conditions for a positive decision regarding motherhood, it turns out that there is no one rule. After all, 21-century women are independent, aware of their freedom, and often attached to the lifestyle they have chosen for themselves. For them, giving up comfort can be as difficult as making decisions.Sleeping in on the weekend is a holiday for mom, and woe betides anyone who calls you before dinner. Unfortunately, the child is not interested in your day off. It doesn’t matter to them whether it's Tuesday or Saturday.
                            
                            However, you have good potential to be a mom in the future, but you are still advised to take your time and take some time for yourself and your development. This will by no means hurt you, but it will only be for the best because you will be able to prepare more thoroughly for motherhood and become a better mother to your children!
                            """
                    ),
                    ResponseRanges(
                        range: 29...36,
                        title: "You will be a good mother",
                        description: """
                            The truth is that a child changes us, our lives, and our situation. We all know this, but everyone is surprised by this fact.
                            
                            It's hard to predict the magnitude of this phenomenon until we see our little babies and begin to build our daily lives with them. For a good mom, such a change will definitely not be a burden and such a problem does not concern you, because you are responsive and caring. You are fully prepared to step on the steps of motherhood and give the world another life. You have quite a lot of knowledge about motherhood in your baggage, you know well how to deal with a newborn baby, in any case, even more knowledge you will get, directly, in the very process of raising a child. You understand your feelings and understand all the subtleties of your emotions: joy, sadness, resentment, inspiration, anger, and the like. You do not confuse anxiety with love, andfatigue with hate, and know-how to accept your negative feelings as well as positive ones. A child around you subconsciously learns to distinguish feelings and not to substitute one for the other.
                            """
                    ),
                    ResponseRanges(
                        range: 37...42,
                        title: "You will be the perfect mother",
                        description: """
                            Being a mother is a big responsibility, but it also brings great happiness and joy if you do it right. In the future, you would like to be not only a mom but also an example for your children. Spend more time with them, communicate with them, and raise them with dignity so that those around you will NOT reproach them for not raising them.The first thing you should understand is that you can't be a perfect mom in every aspect, but you can try to be the best for your children. We all do wrong things sometimes, but you have to learn from your mistakes and the mistakes of others and continually improve yourself.
                            
                            Motherhood, like life, is a process that requires quick, step-by-step responses and adaptation to new and changed conditions, constituents, reactions, causes, and effects. And this requires knowledge and a clear awareness of your mission as a mother.
                            """
                    )
                ]
            ),
            Quiz(
                title: "Are you looking for career growth?",
                description: "Are you a career-oriented person and want to dedicate your life to it? Do you want to know if you will be promoted in the near future, and what’s stopping you from doing so? Our test is designed just for you! Hurry up and take it, and maybe soon you'll see a good change in your life!",
                questions: [
                    Question(text: "Can somebody rely on you?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Maybe", scrore: 2)
                    ]),
                    Question(text: "Do you often rearrange your apartment?", answers: [
                        Answer(text: "Almost every month", scrore: 3),
                        Answer(text: "Once every year or two", scrore: 2),
                        Answer(text: "Almost never ", scrore: 1)
                    ]),
                    Question(text: "Do you manage your finances wisely?", answers: [
                        Answer(text: "I really wish I could.", scrore: 2),
                        Answer(text: "It's boring and complicated for me", scrore: 1),
                        Answer(text: "Yes, I am very careful with my finances", scrore: 3)
                    ]),
                    Question(text: "Do you carefully choose your outfit for important events?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Depends on my mood", scrore: 2)
                    ]),
                    Question(text: "You were asked to take up an extreme sport that you've never done before, would you give it a try?", answers: [
                        Answer(text: "Yes, of course", scrore: 3),
                        Answer(text: "If I'm not alone", scrore: 2),
                        Answer(text: "Probably not", scrore: 1)
                    ]),
                    Question(text: "Do you hum a song or tune while you work?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "No", scrore: 2),
                        Answer(text: "Sometimes", scrore: 1)
                    ]),
                    Question(text: "Do you know how to present yourself in a positive way?", answers: [
                        Answer(text: "I don't like to talk about myself", scrore: 2),
                        Answer(text: "This is very hard for me to do", scrore: 1),
                        Answer(text: "Yeah, it's easy for me", scrore: 3)
                    ]),
                    Question(text: "Do you make a shopping list before you go to the store?", answers: [
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Sometimes", scrore: 2),
                        Answer(text: "Yes, always", scrore: 3)
                    ]),
                    Question(text: "Do you enjoy flirting with other people?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "Depends on my mood", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Do you consider yourself a professional in your own work?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "I doubt myself sometimes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Is it difficult for you to make a choice when there is a large range of products in the store?", answers: [
                        Answer(text: "Yes, it happens all the time", scrore: 1),
                        Answer(text: "Sometimes, when I have very little time", scrore: 2),
                        Answer(text: "No, I like to try new things", scrore: 3)
                    ]),
                    Question(text: "Do your plans often change?", answers: [
                        Answer(text: "Almost always ", scrore: 1),
                        Answer(text: "Sometimes", scrore: 2),
                        Answer(text: "Hardly ever", scrore: 3)
                    ]),
                    Question(text: "Do you like trying new foods?", answers: [
                        Answer(text: "Yes", scrore: 3),
                        Answer(text: "No", scrore: 2),
                        Answer(text: "Sometimes", scrore: 1)
                    ]),
                    Question(text: "Do you easily find common ground with unfamiliar people?", answers: [
                        Answer(text: "No, not really", scrore: 1),
                        Answer(text: "If I really want to", scrore: 2),
                        Answer(text: "Yeah, I don't have a problem with that", scrore: 3)
                    ]),
                    Question(text: "Do you always take on work in the last days of a deadline?", answers: [
                        Answer(text: "Very often", scrore: 1),
                        Answer(text: "At times", scrore: 2),
                        Answer(text: "This almost never happens", scrore: 3)
                    ])
                ],
                backgroundItem: "4",
                backgroundView: "44",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 15...20,
                        title: "You still need to work",
                        description: """
                            Unfortunately, your answers showed that you need to put even more effort into your field. You havea weak idea of your career development. Quite often, in order to get a promotion you have to stand out with your successes, show results, and make your achievements become noticed and appreciated. For this, you have to put forth a lot of effort.Remember that there is no result without mistakes and disappointments, mistakes always give us anew experience.
                            
                            Above all, you need to learn how to quickly make alternative solutions for complexand trivial problems, of course, make a strategic plan, develop morally, spiritually, and in the field ofyour profession. Also, you would do well to listen to criticism from a qualified person, especially if it affects only the work process.The main thing is to set a goal and work on it daily, then you are guaranteed to get your desired career growth.
                            """
                    ),
                    ResponseRanges(
                        range: 21...29,
                        title: "You are a great employee and you give hope",
                        description: """
                            Today's employers expect the candidate to have dozens of different skills. You have the ability to think creatively and manage your time well. You have communication skills, project-management skills, team-building skills, you know how to distinguish constructive criticism from biased attacks, you have the ability to compete and go after your goals. You are a calm and thorough performance specialist, who will never let the boss down.
                            
                            However, you are quite often afraid to take risks, perhaps this is your weak point where you need toimprove. Sometimes, by doing something unusual for you, you do not risk losing your job. On the contrary, it may lead to a boost in your career.So if you want to go only upwards, to improve your skills and grow, you have to learn not to be afraid to take risks and to show your best side. Then your career growth is guaranteed.
                            """
                    ),
                    ResponseRanges(
                        range: 30...37,
                        title: "You will be a good mother",
                        description: """
                            A career, in the broad sense of the word, means a successful advancement in official, scientific, or industrial activity, in achieving fame, higher status, power, or material values.
                            
                            You are a very responsible employee, you always perform your work on time, and modern companies value such specialists highly. The only thing that confuses you before achieving your goal is that you are very doubtful of yourself and your abilities. You will look much more confident when you are able to overcome this fear and have the courage to promote your thoughts and ideas to the masses. You know all the rights and responsibilities of the individual in the field of labor relations.
                            
                            A good impetus for your career advancement is to present yourself, emphasize your strengths, and pay attention to your performance. Whether you like it or not, a company's career growth is often a consequence of self-promotion. So feel free to brag about and praise yourself, you deserve it!
                            """
                    ),
                    ResponseRanges(
                        range: 38...45,
                        title: "You are a career person and will climb up the ladder quickly",
                        description: """
                            You like to try new things because everything that is unusual brings you great pleasure. You easily manage to communicate with people of different ages, sex, or nationality, and you can find common ground with every member of society.
                            
                            Your professionalism is enviable, you are characterized by challenges and risks, that's why you often achieve everything you put forward.The main condition of your successful career growth, as trite as it may sound, is your love to work. It has long been proven that career success depends directly on people's satisfaction with their work, with what they do. So it's important to first choose a profession you like, and only then think about building a career. It's almost impossible to heighten your career in a job you don't love, so don't doubt yourself and go clearly to your goal.
                            """
                    )
                ]
            ),
            Quiz(
                title: "Do you know how to flirt?",
                description: "",
                questions: [],
                backgroundItem: "5",
                backgroundView: "55",
                isOpen: false,
                responseRanges: []
            ),
            Quiz(
                title: "Is your boyfriend suitable as a husband?",
                description: "",
                questions: [],
                backgroundItem: "6",
                backgroundView: "66",
                isOpen: false,
                responseRanges: []
            ),
            Quiz(
                title: "What celebrities do you look like?",
                description: "",
                questions: [],
                backgroundItem: "7",
                backgroundView: "77",
                isOpen: false,
                responseRanges: []
            ),
            Quiz(
                title: "Are you a victim or a hunter?",
                description: "",
                questions: [],
                backgroundItem: "8",
                backgroundView: "88",
                isOpen: false,
                responseRanges: []
            )
        ]
    }
}
