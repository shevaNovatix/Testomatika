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
                title: "How Attractive Are You to Men?",
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
                description: "Many women believe that they know how to flirt flawlessly, but one refusal puts them in a stupor. Find out if you know how to show sympathy for the opposite sex and how well you do it! Our test will help you determine your skill level in a matter of seconds. Try it now!",
                questions: [
                    Question(text: "You're at a party. There are a lot of men around, and quite a few of them are very attractive. What strategic position will you take?", answers: [
                        Answer(text: "I will sit down with a glass of wine in a place where I can see everyone clearly and expect to be passed by a lot.", scrore: 2),
                        Answer(text: "I'll make sure I'm in the middle of the group, so everyone can see and hear me.", scrore: 3),
                        Answer(text: "I will choose a more private place so that I am not in plain sight: whoever needs me will find me!", scrore: 1)
                    ]),
                    Question(text: "You're sitting on a bus and some guy keeps staring at you. How does that make you feel?", answers: [
                        Answer(text: "It all depends on how he looks.", scrore: 2),
                        Answer(text: "Oh, great! I like it very much when people take an interest in me.", scrore: 3),
                        Answer(text: "A lot of insecurity. I'll be red as a tomato.", scrore: 1)
                    ]),
                    Question(text: "In your mind, flirting is...", answers: [
                        Answer(text: "A magazine with dubious content that is constantly placed on my car windscreen.", scrore: 1),
                        Answer(text: "A very pleasant part of a man and a woman's conversation.", scrore: 3),
                        Answer(text: "A way to mislead a man.", scrore: 2)
                    ]),
                    Question(text: "In the company of men you don't know well, you are...", answers: [
                        Answer(text: "Confident and relaxed", scrore: 2),
                        Answer(text: "Totally at ease", scrore: 3),
                        Answer(text: "Clenched rather than relaxed", scrore: 1)
                    ]),
                    Question(text: "What qualities do men need in order to be liked?", answers: [
                        Answer(text: "Look good.", scrore: 2),
                        Answer(text: "Charming, interesting conversationalist..", scrore: 3),
                        Answer(text: "I don't know, there are all kinds of men.", scrore: 1)
                    ]),
                    Question(text: "You have the wrong number. There's a nice man's voice on the phone. You:", answers: [
                        Answer(text: "Tell the guy to get a job in radio.", scrore: 3),
                        Answer(text: "Hang up.", scrore: 1),
                        Answer(text: "Ask him who he is and what he did to my friend Vika!", scrore: 2)
                    ]),
                    Question(text: "To get your conversation partner to like you, which of these methods do you use?", answers: [
                        Answer(text: "I'll smile and flirt a little.", scrore: 2),
                        Answer(text: "Stare at his lips as he talks.", scrore: 3),
                        Answer(text: "Nod understandingly and pretend that his problems matter to me.", scrore: 1)
                    ]),
                    Question(text: "What is scarier for you?", answers: [
                        Answer(text: "Waking up in someone else's flat after casual sex.", scrore: 2),
                        Answer(text: "If a guy turns around and leaves in the middle of the date.", scrore: 3),
                        Answer(text: "Being alone on a Friday night.", scrore: 1)
                    ]),
                    Question(text: "When you flirt with someone, it's literally the first minutes that decide everything. You either win him over or you lose. What do you think brings success?", answers: [
                        Answer(text: "The first sentence", scrore: 2),
                        Answer(text: "Everything is decided by \"chemistry\" - all those hormones and stuff. If the chemistry is there, then you'll be fine.", scrore: 1),
                        Answer(text: "Body language.", scrore: 3)
                    ]),
                    Question(text: "How long do you wait before replying to a message from a man you like?", answers: [
                        Answer(text: "I answer right away.", scrore: 3),
                        Answer(text: "When it's convenient, that's when I answer.", scrore: 1),
                        Answer(text: "Let him suffer for an hour or two.", scrore: 2)
                    ]),
                    Question(text: "Do you want to change something about yourself?", answers: [
                        Answer(text: "No, I like myself.", scrore: 3),
                        Answer(text: "Everything? I don't like myself at all.", scrore: 1),
                        Answer(text: "I don't know.", scrore: 2)
                    ]),
                    Question(text: "He says you look great today. Your reaction:", answers: [
                        Answer(text: "I will say that I am like this all the time, not just today!", scrore: 2),
                        Answer(text: "I'll be modestly silent.", scrore: 1),
                        Answer(text: "I thanked him for the compliment and said something nice back.", scrore: 3)
                    ])
                ],
                backgroundItem: "5",
                backgroundView: "55",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 12...18,
                        title: "You absolutely can't flirt",
                        description: """
                            You are a shy, very reserved person who has trouble showing emotion. You don't like it when someone is excessively interested in you. Of course, deep down you would like to be looked at more by the opposite sex and adored, but you find it very difficult to admit it. You often ignore people’s attempts to flirt with you.
                            
                            Maybe it's because you can't do it yourself. But you need to learn. Perhaps you should start learning how to flirt through social media.We have no problem noticing our interlocutor’s reactions to our words by their facial expressionsor glances when engaging in face-to-face communication. It's worth asking for details, and stressing your interest.
                            """
                    ),
                    ResponseRanges(
                        range: 19...23,
                        title: "You need to work on it",
                        description: """
                            Obviously, you're either too shy or you start to overcomplicate things when things get interesting. Smile more, especially with your eyes. If you hesitate to say it out loud, say it with your eyes.You are characterized by absolute democracy in your relationships.
                            
                            You are not restricted by any attitudes about relationships, including sexual ones. You don't mind trying out new things and are inclined to experiment. However, a lot of freedom can get in the way of keeping a man close to you. You may need to change your strategy for someone you want to be around all the time. Imposing some restrictions may even be beneficial.
                            
                            The advice, according to scientists, is that fleeting touches are the most effective flirting technique. Touching the face is considered intimate and not always welcome. A pat on the shoulder and a handshake are perceived by people as friendly gestures, which means they are of little use in the difficult business of flirting. If you want your "object" to be remembered and liked, touch his shoulder or forearm lightly.
                            """
                    ),
                    ResponseRanges(
                        range: 24...28,
                        title: "You're getting good at flirting",
                        description: """
                            In general, you know how to flirt. You're used to not relying on opportunities to find happiness. You know how to keep a conversation going, and when you hear compliments, you certainly don't get lost in them. But at the same time, it's all limited to casual flirting. You lack spontaneity and imagination.Let me put it another way: flirting requires intelligence, emotional intelligence, empathy, and interest in other people, which is hard to find these days.Allow yourself to step out of your comfort zone and try something new.
                            
                            If you are endowed with a subtle sense of humor and are not shy to sometimes distinguish yourself in a conversation with a "certain" joke, then you will master the art of flirting easily.Never be afraid to crack a joke. A good joke will lighten the mood and brighten up a dull day.Be sure you're the beautiful one! Smile and look around. You'll find men to flirt with right away. And it does not matter how long you've been in the beauty salon and whether you have a fashionable outfit. Down with complexes and self-doubt! Remember that the opposite sex will always find you attractive.
                            """
                    ),
                    ResponseRanges(
                        range: 29...32,
                        title: "You know what the boys like",
                        description: """
                            Sometimes we flirt to build or maintain our good mood, to win someone's sympathy, or to diversify a relationship (called casual flirting). Some people have the ability to flirt in their blood, while others learn this with time, age, experience - when their self-esteem and therefore their self-confidence increases. You recognize strengths in yourself, such as personal charm, as well as freedom, a smile, distance to yourself, peace (no one likes neurotic or aggressive people).
                            
                            You also have the ability to carry on interesting conversations, give compliments, and meet the other party's expectations while still being yourself.If you're confident in your attractiveness, flirting will be easy and fun for you.
                            
                            It might be worth joking around with a man, as it's already an unobtrusive flirtation with him. Now let flirtatiousness and charm come into play and joke around with gusto. But remember, you should not ridicule your companion, and do not laugh at the shortcomings of others. Cute jokes on disparate topics are enough for flirting.
                            """
                    ),
                    ResponseRanges(
                        range: 33...36,
                        title: "You are a flirting goddess",
                        description: """
                            Fantastic! You have a natural gift for flirting! Perhaps you should start your own flirting classes?You make the impossible possible. In addition, you know how to show your interest by listening carefully to other individuals. But at the same time, the person who puts the least effort in your direction cannot win your ardent heart. In short, that's right!
                            
                            You love the thrill of male and female role-play, so you always need to renew and gain energy by communicating and flirting with the opposite sex. You are a very sociable person, also quite confident as you know how to present yourself attractively. At the same time you have a good intellect and are an interesting conversationalist. You adore being the center of attention. The greedy look of the guys doesn't make you crazy at all. On the contrary! You love to be loved andgiven lots of attention. You take advantage of sessions at every opportunity and you're great at it.
                            """
                    ),
                ]
            ),
            Quiz(
                title: "Is your boyfriend suitable as a husband?",
                description: "Are you head over heels in love with your boyfriend and want to know if he is suitable husband material? It's a practical question, so don't avoid it. Take our quiz to find out if your partner couldbe the right husband for you. Let’s get started.",
                questions: [
                    Question(text: "Do you and your partner have the same social levels?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Which of the following do you find most remarkable about your partner?", answers: [
                        Answer(text: "His intelligence and resourcefulness.", scrore: 3),
                        Answer(text: "His authority among his colleagues", scrore: 1),
                        Answer(text: "His sexuality and beauty.", scrore: 2)
                    ]),
                    Question(text: "How has your partner reacted to the suspicion of pregnancy?", answers: [
                        Answer(text: "Worried as you were while waiting for the test results.", scrore: 3),
                        Answer(text: "Claimed to have been extremely careful during intimacy and reassured you.", scrore: 2),
                        Answer(text: "He was very anxious and kept asking you if your period had started.", scrore: 1)
                    ]),
                    Question(text: "Does your partner's relationship with your mother/brother annoy you?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "Describe his behaviour when the conversation turns to his parents.", answers: [
                        Answer(text: "He answers questions about his parents with warmth.", scrore: 2),
                        Answer(text: "He acts annoyed.", scrore: 1),
                        Answer(text: "He rejoices and speaks of his parents with love.", scrore: 3)
                    ]),
                    Question(text: "Do you enjoy touching your partner's toes in bed?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "How does your partner react to your doubts about the relationship?", answers: [
                        Answer(text: "Pretends all is well, but suffers for your doubts.", scrore: 2),
                        Answer(text: "Gives me time to think about it by pulling away for a while.", scrore: 1),
                        Answer(text: "He is sure of his feelings and keeps courting.", scrore: 3)
                    ]),
                    Question(text: "How does your partner react when you interrupt your reasoning without finishing?", answers: [
                        Answer(text: "Patiently waits for you to finish.", scrore: 3),
                        Answer(text: "Finishes a sentence for you.", scrore: 2),
                        Answer(text: "Getting annoyed.", scrore: 1)
                    ]),
                    Question(text: "Does your partner take your hand or hug you when you meet someone in the street?", answers: [
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Yes", scrore: 2)
                    ]),
                    Question(text: "Did you notice a lot of overlap when your relationship with your partner began?", answers: [
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Yes", scrore: 2)
                    ]),
                    Question(text: "Do you talk during intimacy with your partner?", answers: [
                        Answer(text: "No", scrore: 1),
                        Answer(text: "Yes", scrore: 2)
                    ]),
                    Question(text: "How do you deal with your partner's shortcomings?", answers: [
                        Answer(text: "I accept him as he is, with all his virtues and flaws.", scrore: 3),
                        Answer(text: "I put up with it for a while, but then I put the problem of shortcomings on the table.", scrore: 2),
                        Answer(text: "I hope that he will change in the future.", scrore: 1)
                    ]),
                    Question(text: "Do you like your partner's behavior at the dinner table?", answers: [
                        Answer(text: "No", scrore: 2),
                        Answer(text: "Yes", scrore: 3),
                    ]),
                    Question(text: "Which of these people will be the first to hear about your promotion at work?", answers: [
                        Answer(text: "Close friends.", scrore: 2),
                        Answer(text: "Your partner.", scrore: 3),
                        Answer(text: "Parents.", scrore: 1)
                    ]),
                    Question(text: "How would you react if your partner told you that he was going to spend the whole weekend out of town with friends?", answers: [
                        Answer(text: "I remind him that his weekend is already taken up with a trip to a mutual acquaintance, as you agreed.", scrore: 2),
                        Answer(text: "I'll start thinking about the best way to get him and I together in the future, like goingabroad.", scrore: 1),
                        Answer(text: "No way, because he has nothing against you going out with your girlfriends, either.", scrore: 3)
                    ]),
                    Question(text: "How does your partner react to a cranky child with her mom passing by?", answers: [
                        Answer(text: "He reacts quite calmly - so far such problems don't bother him.", scrore: 2),
                        Answer(text: "He gets annoyed and turns away. He is not happy about this kind of picture.", scrore: 1),
                        Answer(text: "Smiles and takes your hand.", scrore: 3)
                    ]),
                    Question(text: "What would happen if you and your partner suddenly broke up?", answers: [
                        Answer(text: "I would grieve this loss for a long time.", scrore: 2),
                        Answer(text: "I would grieve for a while, but soon I would go out with someone.", scrore: 3),
                        Answer(text: "I would soon have a new partner.", scrore: 1)
                    ]),
                    Question(text: "What does your intuition say about your partner?", answers: [
                        Answer(text: "That you have to hold on tight to it.", scrore: 2),
                        Answer(text: "Nothing.", scrore: 1),
                        Answer(text: "Just the good stuff.", scrore: 3)
                    ]),
                    Question(text: "How do you imagine your partner in your best dreams?", answers: [
                        Answer(text: "The way I saw him on our first date.", scrore: 1),
                        Answer(text: "He is working and making progress.", scrore: 2),
                        Answer(text: "He plays with your child.", scrore: 3)
                    ]),
                    Question(text: "Describe your partner's behavior when they are watching their favorite team play.", answers: [
                        Answer(text: "Shows his love for this team by shouting, stomping, and clapping, even if it's a replayon TV.", scrore: 2),
                        Answer(text: "Explains to me what is happening on the pitch in a much more interesting way than what it actually looks like.", scrore: 3),
                        Answer(text: "He stares very intently at the screen.", scrore: 1)
                    ])
                ],
                backgroundItem: "6",
                backgroundView: "66",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 20...29,
                        title: "Your boyfriend is a persistent bachelor",
                        description: """
                            Your man is not yet ready for married life. Maybe there is no need to rush into buying an engagement ring.A person who is serious about the future and wants to start a family will try to become independent and employed anyway. That is why he will try to be self-sufficient. Remember that when a child is born, it comes with a package that says “responsibility”. Your partner is obviously not quite ready for that yet.
                            
                            He still needs time to find himself and understand the true value of marriage.It's not very sensible to imagine your family with a man who could risk losing your love for one night with another. If your partner has failed to say no to yourself once, there is a high percentage that history can repeat itself after marriage.
                            
                            Tip: Psychologists point out that a lack of mutual trust destroys relationships. Especially when a woman plays the role of detective and watches her partner's every move.
                            """
                    ),
                    ResponseRanges(
                        range: 30...39,
                        title: "A guy would do anything for you and he tries",
                        description: """
                            The most important thing is that your partner is open to compromise and is willing to do anythingfor you. In a relationship, it is essential to know who makes the decision. As a rule, men want to make decisions - there is nothing wrong with that if he always asks you for your opinion and caneasily change his mind when you strongly disagree. That's a very good thing!
                            
                            The two of you have plans together that not only cover the next week, but include, for example, the next year. Your partner knows exactly what you want to do in 5-10 years. He or she realizes what your plans and dreams are. Are you sure your future husband is fully prepared to start a family or is this just a fairy tale and manipulation on his part?Golden tip:
                            
                            Remember one thing - marriage is about compromise! The willingness to talk and agree on common ground determines its longevity. By following this rule you can create a relationship built on mutual trust and love.
                            """
                    ),
                    ResponseRanges(
                        range: 40...46,
                        title: "Your boyfriend is about to mature",
                        description: """
                            Congratulations! Just a little longer and he can definitely propose to you. What can guarantee that? Your boyfriend takes care of you, this can manifest in, for example, if he takes care of you when you are sickWhat happens when you are home sick? Does he visit you, give you tea, do your shopping? Marriage is about being together, for better or for worse, healthy and sick to death. Old-fashioned, but true.
                            
                            If he wants to introduce you to his friends and parents.If he wants to get to know your friends, it means he wants to deepen your relationship. And if healso wants to get to know your parents and siblings, he wonders if it's worth becoming part of the family.Every other guy will start saying "we" after a few months, which means that your relationship has deepened, you are starting to form a harmonious team.
                            
                            When a man asks where you would like to go on holiday next year, it is a clear signal that the relationship is a permanent element in a life changing experience.
                            """
                    ),
                    ResponseRanges(
                        range: 47...53,
                        title: "Your boyfriend is 100% ready",
                        description: """
                            He is independent, financially stable, and able to save money.Research clearly shows that a person who has his own money and a job enough to abstain is generally ready for marriage. Financial independence means that a person is doing well, so legalizing the relationship would be the next logical step.
                            
                            A man who is willing to share his own money with his parents and siblings in marriage will be just as generous with his wife and children. Responsible handling of financial matters is a very important trait of a future husband. Pay attention to whether your partner's income is relatively constant and how much he saves. Even if he earns a lot but spends everything, this is not a good sign.
                            
                            So you can be sure that you have chosen a reliable partner for your future life together, gradually taking steps together to create a close-knit family!
                            """
                    ),
                
                ]
            ),
            Quiz(
                title: "What celebrities do you look like?",
                description: "Do you love watching the celebreties? What if we say that you look like one of them? Let’s check? Then take this test now. With its help, we will analyze your similarities with celebrities and determine which of them you most resemble. Let’s start?",
                questions: [
                    Question(text: "Has anyone ever compared you to a famous person?", answers: [
                        Answer(text: "Yes, many times", scrore: 4),
                        Answer(text: "I don’t remember", scrore: 2),
                        Answer(text: "Only with cartoon characters", scrore: 3),
                        Answer(text: "Only with cartoon characters", scrore: 1)
                    ]),
                    Question(text: "What is your style of clothing?", answers: [
                        Answer(text: "Classic Lady", scrore: 4),
                        Answer(text: "Sports", scrore: 2),
                        Answer(text: "Sexual", scrore: 3),
                        Answer(text: "Other", scrore: 1)
                    ]),
                    Question(text: "Choose the dominant trait of your character", answers: [
                        Answer(text: "Kindness", scrore: 5),
                        Answer(text: "Responsibility", scrore: 3),
                        Answer(text: "Ingenuity", scrore: 4),
                        Answer(text: "Sense of humor", scrore: 2),
                        Answer(text: "Openness", scrore: 1),
                    ]),
                    Question(text: "What type of figure do you have?", answers: [
                        Answer(text: "Rectangle", scrore: 5),
                        Answer(text: "Inverted triangle", scrore: 4),
                        Answer(text: "Sand clock", scrore: 3),
                        Answer(text: "Pear", scrore: 2),
                        Answer(text: "I don’t know", scrore: 1)
                    ]),
                    Question(text: "What is your hair color?", answers: [
                        Answer(text: "Brown", scrore: 5),
                        Answer(text: "Black", scrore: 4),
                        Answer(text: "Blonde with highlights", scrore: 3),
                        Answer(text: "Light blond", scrore: 2),
                        Answer(text: "Red or chestnut", scrore: 1)
                    ]),
                    Question(text: "What is the shape of your face?", answers: [
                        Answer(text: "Round", scrore: 4),
                        Answer(text: "Oval", scrore: 5),
                        Answer(text: "Hard to say", scrore: 1),
                        Answer(text: "Rectangular", scrore: 2),
                        Answer(text: "Heart-shaped", scrore: 3)
                    ]),
                    Question(text: "What color are your eyes?", answers: [
                        Answer(text: "Dark brown", scrore: 1),
                        Answer(text: "Green", scrore: 2),
                        Answer(text: "Blue", scrore: 3)
                    ]),
                    Question(text: "How many guys did you have?", answers: [
                        Answer(text: "Several, maximum 4", scrore: 3),
                        Answer(text: "2-3", scrore: 4),
                        Answer(text: "5-7", scrore: 2),
                        Answer(text: "About 10", scrore: 1),
                        Answer(text: "1-2", scrore: 5),
                    ]),
                    Question(text: "You are:", answers: [
                        Answer(text: "Tall", scrore: 3),
                        Answer(text: "Average growth", scrore: 2),
                        Answer(text: "Short", scrore: 1)
                    ]),
                    Question(text: "What is your main advantage?", answers: [
                        Answer(text: "Good appearance", scrore: 4),
                        Answer(text: "Artistry, charisma", scrore: 2),
                        Answer(text: "Good vocals", scrore: 3),
                        Answer(text: "Sports data", scrore: 1)
                    ]),
                    Question(text: "Which of these outstanding women is an icon for you?", answers: [
                        Answer(text: "Coco Chanel", scrore: 2),
                        Answer(text: "Marilyn Monroe", scrore: 3),
                        Answer(text: "Audrey Hepburn", scrore: 1),
                        Answer(text: "Princess Diana", scrore: 4)
                    ]),
                    Question(text: "What do you like most about yourself?", answers: [
                        Answer(text: "Eyes", scrore: 4),
                        Answer(text: "Lips", scrore: 3),
                        Answer(text: "Neat nose", scrore: 2),
                        Answer(text: "Cheeks", scrore: 1)
                    ]),
                    Question(text: "Are you interested in news about the world of stars?", answers: [
                        Answer(text: "So very often! I like to gossip", scrore: 5),
                        Answer(text: "Yes, but mostly about the world of movies and TV series", scrore: 4),
                        Answer(text: "I like colorful photos and photo shoots", scrore: 2),
                        Answer(text: "That is not exactly my atmosphere", scrore: 1),
                        Answer(text: "I prefer watching TV shows or interesting podcasts", scrore: 3)
                    ]),
                    Question(text: "What is your favorite hairstyle?", answers: [
                        Answer(text: "High tail", scrore: 4),
                        Answer(text: "Curls", scrore: 3),
                        Answer(text: "Long straight hair", scrore: 2),
                        Answer(text: "Square", scrore: 1)
                    ]),
                    Question(text: "The movie you want to star in is ...", answers: [
                        Answer(text: "Romantic comedy", scrore: 5),
                        Answer(text: "Crime", scrore: 4),
                        Answer(text: "Sensational, action", scrore: 3),
                        Answer(text: "I don’t know", scrore: 1),
                        Answer(text: "Other", scrore: 2)
                    ]),
                    Question(text: "What are the most shades of clothing that predominate in your wardrobe?", answers: [
                        Answer(text: "Oh! You surprised me with this question!", scrore: 4),
                        Answer(text: "I like black, but all colors work for me", scrore: 3),
                        Answer(text: "I don't know, I have a lot of clothes and I don't pay much attention to their shade", scrore: 2),
                        Answer(text: "Clothing color is not the most important thing!", scrore: 1)
                    ]),
                    Question(text: "What animal are you equated to", answers: [
                        Answer(text: "Cat", scrore: 4),
                        Answer(text: "Swan", scrore: 3),
                        Answer(text: "I look like myself", scrore: 1),
                        Answer(text: "To the cheetah", scrore: 2)
                    ]),
                    Question(text: "How do you like to spend your free time?", answers: [
                        Answer(text: "In the gym", scrore: 1),
                        Answer(text: "With a book on the couch, near the TV", scrore: 5),
                        Answer(text: "With friends, at invited parties, at the movies, in cafes", scrore: 4),
                        Answer(text: "On a date with a loved one", scrore: 2),
                        Answer(text: "Outdoors", scrore: 3)
                    ]),
                    Question(text: "Who did you dream of being like as a child?", answers: [
                        Answer(text: "My mother", scrore: 4),
                        Answer(text: "A movie actress", scrore: 3),
                        Answer(text: "A famous athlete", scrore: 2),
                        Answer(text: "Another option", scrore: 1)
                    ]),
                    Question(text: "What is the most important thing in your life?", answers: [
                        Answer(text: "Family", scrore: 4),
                        Answer(text: "Career", scrore: 3),
                        Answer(text: "Travel", scrore: 2),
                        Answer(text: "Success", scrore: 1)
                    ])
                ],
                backgroundItem: "7",
                backgroundView: "77",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 20...35,
                        title: "Emma Stone",
                        description: """
                            Your answers to the test showed that you have a lot in common with one of the highest-paid American actresses - Emma Stone. You have a very unusual type of beauty, which is combined with the original character, a good figure, and a sense of humor. Such girls are a waterfall of emotions. You are sometimes crazy, and sometimes you are silent. You adore the attention of others at various events and parties, but often try to avoid unnecessary looks, because you do not like when you are discussed.
                            
                            You focus not on yourself, but on what you can do - this is your disadvantage. Sometimes you should pay more time and attention to yourself because you are unique and unique. However, the extraordinary is not only one of your best sides, but you also have a lot of talent! You have incredible potential, it is a pity that you do not fully realize that you are worth something more, whether in a career or, for example, a relationship. Show your femininity more often - not only during "big appearances" in public. Take the initiative and strive for the best, because you deserve it!
                            """
                    ),
                    ResponseRanges(
                        range: 36...49,
                        title: "Jennifer Lopez",
                        description: """
                            You are a self-conscious attractive blonde. Your special character traits are a commitment toany sphere of life and an ambitious approach to many issues. No one will be able to deceive you, because you are not one of those naive girls, you can easily overcome all the difficultiesand obstacles of life and get to the desired goal. You are loved and appreciated by both menand women.
                            
                            You are followed because of your style, appearance, and energy, which will not leave anyone indifferent. You know the secrets of seduction that you use to attract the attention of the opposite sex. You like to take care of yourself and emphasize your strengths.You spend a lot of time in the gym, so you have a good figure. You do not give a second chance to people who did not live up to your expectations, you always go one step ahead of your surroundings. However, the steel character needs to be weakened sometimes, for example in a relationship with a man, because excessive responsibility can lead to emotionalburnout.
                            """
                    ),
                    ResponseRanges(
                        range: 50...69,
                        title: "Mila Kunis",
                        description: """
                            You have the most similarities with the American actress of Jewish origin Mila Kunis.You are a slender, attractive, and resourceful brunette, and have forest green eyes and very girlish features. Your distinguishing features are a slender figure and medium or tall stature. You like the sporty, casual style and freedom.
                            
                            You always remain yourself in any situation, you do not care about criticism, because you know well what priorities are most important to you in life. Your relatives are counting on you because you have good career potential. You are all about family; the opinion of the family is the main thing for you. You often listen to them, but we advise you to make serious decisions more often without strangers, so there is a better chance for your happy future. No one but you knows how and with whom you will bebetter. So don’t pay attention to others and listen to your heart!
                            """
                    ),
                    ResponseRanges(
                        range: 70...86,
                        title: "Jennifer Lawrence",
                        description: """
                            So much energy and motivation you have! You have an attractive appearance and a beautiful figure; men literally grind away from you. You are open and spontaneous. You love adventure, so it's easy for you to pack your bags and fly to the other side of the world for new emotions. You have your own style, though, and you usually don't pay attention to otherpeople's looks and opinions. You are distinguished by loud laughter and a sense of humor.
                            
                            You are a very sociable blonde, you have many friends and acquaintances. Most likely you have deep blue eyes, from which it is impossible to take your eyes off. However, the stereotype about stupid blondes is definitely not about you. You are well-read and have strong leadership qualities. Although you love loud parties surrounded by big crowds, you also do not mind spending a quiet evening alone, for example, with a book or TV. American actress Jennifer Lawrence, known for her roles in the films "The Hunger Games" and "American Scam" also fits this description!
                            """
                    )
                ]
            ),
            Quiz(
                title: "Are you a victim or a hunter?",
                description: "Do you feel that you are often manipulated? Or perhaps you find that you always get what you want? Find out if you are a victim or a predator. Take our quiz now and get a guide to action! It only takes five minutes.",
                questions: [
                    Question(text: "Even if someone allows themselves to say nasty things about you, you will never stoop to thesame behavior?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Your friends took a road trip and you weren't invited. Are you going to be mad?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "If your stockings had a laceration and had to be urgently sewn up, would you ever wear them again in the future?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "If a guy you really like has a wife or girlfriend, would you flirt with him in her absence?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Do you think things like miniskirts, tops, and plunging necklines are just cheap tricks to get guys' attention?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "A young man has invited you to a film you don't want to watch. Will you go?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "If you see a posh lady and a muscular guy getting out of a luxury foreign car, do you envy her?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "A friend has hurt you badly. Will you keep in touch with her?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "If, when you go to a concert in your favorite miniskirt, you see all the ladies around you in an evening dress, will you leave the event?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "While dancing with a guy, he keeps talking about your friend and how great she is. Will you keep dancing with him?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "You like a new lipstick at the makeup shop, but your best friend says it doesn't suit you. Will you buy this lipstick?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "If your boyfriend asks your friend to a dance at the club, will you be offended and go home?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "If, when you go out, you realize that you have overdone your makeup, do you go home to redo it?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "If your friends can't decide on a suitable dress before the prom, will you choose the last dress that doesn't look like the others so as not to offend anyone?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "If you and your friend are going to a concert and she asks you to lend her your earrings, even though you wanted to wear them yourself, would you give them to her?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "Imagine you are going to an event with lots of interesting people, but there will also be a girl who hates you and is always nasty. Would you go to the event?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "Do you know what you want out of life?", answers: [
                        Answer(text: "Yes", scrore: 2),
                        Answer(text: "No", scrore: 1)
                    ]),
                    Question(text: "If you like a dress in a shop that looks a lot like your friend's, would you refuse to buy it to avoid upsetting your friend?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ]),
                    Question(text: "If someone spills a drink on your dress at a party, will you go straight home, losing all desire to have fun?", answers: [
                        Answer(text: "Yes", scrore: 1),
                        Answer(text: "No", scrore: 2)
                    ])
                ],
                backgroundItem: "8",
                backgroundView: "88",
                isOpen: true,
                responseRanges: [
                    ResponseRanges(
                        range: 19...23,
                        title: "You are a victim and it bothers you",
                        description: """
                            Psychological violence can slowly creep into relationships between partners, colleagues, and friends, gradually destroying your self-esteem and self-confidence. Such signals may be subtle, but if you have already noticed such an attitude toward yourself, it is better to be vigilant and intervene immediately.
                            
                            Usually, you can't talk about what's hurting you and you often feel helpless or maybe just controlling your emotions. It is difficult for you to open up to new people because of a bitter experience. People have abused your kindness to make you feel guilty, perhaps using emotional blackmail, exploiting and manipulating you, disregarding your thoughts and desires. You are only noticed when they need you, not the other way around.
                            
                            You only spend time with this person when he or she decides he or she wants to. It's perfectly normal for her not to respond to your messages, not to keep in touch, and never to find time for you when you need it.
                            """
                    ),
                    ResponseRanges(
                        range: 24...28,
                        title: "You are a victim who wants to change something",
                        description: """
                            You are as vulnerable as a mouse. One of your characteristics is excessive shyness. You are ashamed to express your own opinions, and if you are going to do so you are afraid of how others will perceive it. Your boundaries are often respected and you don't like it, so you want to change that.
                            
                            Sometimes your "friends" themselves call or contact you when they are bored or you can help them with something, and once things get better, they disappear again without remorse.
                            
                            Your so-called "friends," who make you a victim, lay all their problems on you and constantly ask you to do something for them, even if you are busy or unwilling. They use you to banish their negative emotions. These are all red flags, which means that this person does not respect your boundaries and abuses your benevolence. Such a person usually doesn't want to give up your efforts or thank you for your attention, because everything suits them. So recognize such a "one-way street" as soon as possible and avoid such a relationship.
                            """
                    ),
                    ResponseRanges(
                        range: 29...33,
                        title: "You know how to maintain balance",
                        description: """
                            Sometimes you allow others to manage your time and wishful thinking, but still, you have your own dignity and will never allow yourself to be managed by another person.
                            
                            You have encountered situations where friends disregarded your requests, and if you still notice this tendency, it is better to give up such a friendship: you will not receive anything, but only give up your time and energy.
                            
                            You are always the first to invite your friends to a meeting, take steps to maintain your relationship, and make your plans according to their wishes. You should learn to stand up for your opinions and build mutually beneficial relationships.Tip: If you feel some kind of catch in the request to you - do not agree right away, say that you need to think, consult with friends, relatives. This will give time to understand the situation and make an informed decision.
                            
                            And also - when you are afraid to say "no" - worrying that you might lose a friend or a girlfriend - first think about whether you need such a person who won't come to your aid when you need something.
                            """
                    ),
                    ResponseRanges(
                        range: 34...36,
                        title: "You seem to have the makings of a predator",
                        description: """
                            You often don't accept limitation, even if it promises abundance, which makes you predatory. What is meant is, first of all, inner restraint. You can be characterized as a freedom-loving person who knows her own worth and will never sacrifice her favorite dress or earrings for her best friend. However, you can always find a way out of any confusing situation, find the best solution, and smooth over a burning conflict.
                            
                            You do everything as you want, regardless of what others think, you will not adjust to other people's circumstances or sacrifice your pleasure in favor of others - this is definitely not about your personality. You are a clear leader in partnerships and friendships that attract people to you. Most importantly, don't forget that mutual help must be on both sides if you really want to build strong friendships for years to come.
                            """
                    ),
                    ResponseRanges(
                        range: 37...38,
                        title: "100% Predator",
                        description: """
                            You know exactly where you are and what you want out of life. You have no problem communicating with different people.Being a predator means not only being able to manage your life but also having the ability to subdue and lead people with charisma and charm. Such people tend to be authoritative, determined, and energetic, sometimes becoming supporters of manipulation for their own benefit.
                            
                            You have no fear of dependence on others. But sometimes you don't realize that you are working with people and not alone. You are not afraid to take responsibility, though you often allow for the fact that not everyone will be your true followers.A true predator strives to do things her own way and on her own time, especially if she is not interested in following stereotypes. She wants to make her own decisions and choices without looking back at the rules and prohibitions of loved ones and outsiders. If such a person is driveninto a frame, to force her to follow the rules, she will start to destroy herself. It’s like trying to keep a wild animal in a cage.
                            """
                    )
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            ),
            Quiz(
                title: "",
                description: "",
                questions: [
                    Question(text: "", answers: [
                        Answer(text: "", scrore: 2),
                        Answer(text: "", scrore: 3),
                        Answer(text: "", scrore: 1)
                    ])
                ],
                backgroundItem: "9",
                backgroundView: "99",
                isOpen: false,
                responseRanges: [
                    ResponseRanges(
                        range: 0...1,
                        title: "",
                        description: """
                            ffd
                            """
                    ),
                ]
            )
        ]
    }
}
