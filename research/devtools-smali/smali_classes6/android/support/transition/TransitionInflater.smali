.class public Landroid/support/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# static fields
.field private static final CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 45
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 193
    const-string v0, "class"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    sget-object p3, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    sget-object v1, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 202
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 204
    iget-object v3, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 205
    invoke-virtual {v3, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 206
    if-eqz v3, :cond_0

    .line 207
    sget-object v1, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 209
    sget-object v3, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p3

    return-object p1

    .line 214
    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    :catch_0
    move-exception p1

    .line 216
    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " class "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 196
    :cond_1
    new-instance p1, Landroid/view/InflateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " tag must have a \'class\' attribute"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    nop

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 122
    instance-of v1, p3, Landroid/support/transition/TransitionSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Landroid/support/transition/TransitionSet;

    goto :goto_0

    .line 125
    :cond_0
    move-object v1, v2

    :goto_0
    move-object v3, v2

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_19

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_19

    .line 128
    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 129
    goto :goto_1

    .line 132
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v5, "fade"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    new-instance v3, Landroid/support/transition/Fade;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 135
    :cond_3
    const-string v5, "changeBounds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    new-instance v3, Landroid/support/transition/ChangeBounds;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 137
    :cond_4
    const-string v5, "slide"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 138
    new-instance v3, Landroid/support/transition/Slide;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 139
    :cond_5
    const-string v5, "explode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 140
    new-instance v3, Landroid/support/transition/Explode;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 141
    :cond_6
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 142
    new-instance v3, Landroid/support/transition/ChangeImageTransform;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 143
    :cond_7
    const-string v5, "changeTransform"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 144
    new-instance v3, Landroid/support/transition/ChangeTransform;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 145
    :cond_8
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 146
    new-instance v3, Landroid/support/transition/ChangeClipBounds;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 147
    :cond_9
    const-string v5, "autoTransition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 148
    new-instance v3, Landroid/support/transition/AutoTransition;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 149
    :cond_a
    const-string v5, "changeScroll"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 150
    new-instance v3, Landroid/support/transition/ChangeScroll;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 151
    :cond_b
    const-string v5, "transitionSet"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 152
    new-instance v3, Landroid/support/transition/TransitionSet;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_2

    .line 153
    :cond_c
    const-string v5, "transition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 154
    const-class v3, Landroid/support/transition/Transition;

    const-string v4, "transition"

    invoke-direct {p0, p2, v3, v4}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    goto :goto_2

    .line 155
    :cond_d
    const-string v5, "targets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V

    goto :goto_2

    .line 157
    :cond_e
    const-string v5, "arcMotion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 158
    if-eqz p3, :cond_f

    .line 161
    new-instance v4, Landroid/support/transition/ArcMotion;

    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Landroid/support/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v4}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto :goto_2

    .line 159
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid use of arcMotion element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_10
    const-string v5, "pathMotion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 163
    if-eqz p3, :cond_11

    .line 166
    const-class v4, Landroid/support/transition/PathMotion;

    const-string v5, "pathMotion"

    invoke-direct {p0, p2, v4, v5}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/PathMotion;

    invoke-virtual {p3, v4}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto :goto_2

    .line 164
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid use of pathMotion element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_12
    const-string v5, "patternPathMotion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 169
    if-eqz p3, :cond_17

    .line 172
    new-instance v4, Landroid/support/transition/PatternPathMotion;

    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Landroid/support/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p3, v4}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    .line 176
    :goto_2
    if-eqz v3, :cond_16

    .line 177
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_13

    .line 178
    invoke-direct {p0, p1, p2, v3}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;

    .line 180
    :cond_13
    if-eqz v1, :cond_14

    .line 181
    invoke-virtual {v1, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 182
    nop

    .line 187
    move-object v3, v2

    goto :goto_3

    .line 183
    :cond_14
    if-nez p3, :cond_15

    goto :goto_3

    .line 184
    :cond_15
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Could not add transition to another transition."

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_16
    :goto_3
    goto/16 :goto_1

    .line 170
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid use of patternPathMotion element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_18
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scene name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 189
    :cond_19
    return-object v3
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 286
    nop

    .line 288
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 291
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 292
    goto :goto_0

    .line 295
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 296
    const-string v3, "transitionManager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    new-instance v1, Landroid/support/transition/TransitionManager;

    invoke-direct {v1}, Landroid/support/transition/TransitionManager;-><init>()V

    goto :goto_1

    .line 298
    :cond_2
    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 299
    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V

    .line 303
    :goto_1
    goto :goto_0

    .line 301
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scene name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 304
    :cond_4
    return-object v1
.end method

.method public static from(Landroid/content/Context;)Landroid/support/transition/TransitionInflater;
    .locals 1

    .line 57
    new-instance v0, Landroid/support/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 228
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_9

    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    .line 231
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 232
    goto :goto_0

    .line 235
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string v5, "target"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 237
    iget-object v1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 238
    const-string v5, "targetId"

    const/4 v6, 0x0

    invoke-static {v1, p1, v5, v3, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 241
    if-eqz v5, :cond_2

    .line 242
    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    goto :goto_2

    .line 243
    :cond_2
    const-string v5, "excludeId"

    invoke-static {v1, p1, v5, v4, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    .line 245
    invoke-virtual {p3, v4, v3}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    goto :goto_2

    .line 246
    :cond_3
    const-string v4, "targetName"

    const/4 v5, 0x4

    invoke-static {v1, p1, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 248
    invoke-virtual {p3, v4}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    goto :goto_2

    .line 249
    :cond_4
    const-string v4, "excludeName"

    const/4 v5, 0x5

    invoke-static {v1, p1, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 251
    invoke-virtual {p3, v4, v3}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    goto :goto_2

    .line 253
    :cond_5
    const-string v4, "excludeClass"

    invoke-static {v1, p1, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_6

    .line 257
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 258
    invoke-virtual {p3, v4, v3}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;

    .line 259
    goto :goto_1

    .line 264
    :catch_0
    move-exception p1

    goto :goto_3

    .line 259
    :cond_6
    const-string v3, "targetClass"

    invoke-static {v1, p1, v3, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    .line 261
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 262
    invoke-virtual {p3, v2}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_3

    .line 267
    :cond_7
    :goto_1
    nop

    .line 269
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    nop

    .line 273
    goto/16 :goto_0

    .line 264
    :goto_3
    nop

    .line 265
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not create "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 271
    :cond_8
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown scene name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 274
    :cond_9
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 311
    const-string v0, "transition"

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 313
    const-string v2, "fromScene"

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 315
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 317
    move-object v2, v3

    goto :goto_0

    .line 315
    :cond_0
    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v2, v4}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v2

    .line 317
    :goto_0
    const-string v4, "toScene"

    const/4 v5, 0x1

    invoke-static {p1, p2, v4, v5, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 319
    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, v1}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v3

    .line 321
    :goto_1
    if-ltz v0, :cond_4

    .line 322
    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionInflater;->inflateTransition(I)Landroid/support/transition/Transition;

    move-result-object p2

    .line 323
    if-eqz p2, :cond_4

    .line 324
    if-eqz v3, :cond_3

    .line 327
    if-nez v2, :cond_2

    .line 328
    invoke-virtual {p4, v3, p2}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    goto :goto_2

    .line 330
    :cond_2
    invoke-virtual {p4, v2, v3, p2}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    goto :goto_2

    .line 325
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No toScene for transition ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 334
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    return-void
.end method


# virtual methods
.method public inflateTransition(I)Landroid/support/transition/Transition;
    .locals 4

    .line 69
    iget-object v0, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 71
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .locals 3

    .line 91
    iget-object v0, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 93
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;

    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 98
    :catch_0
    move-exception p2

    .line 99
    :try_start_1
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103
    throw v0

    .line 94
    :catch_1
    move-exception p2

    .line 95
    new-instance v0, Landroid/view/InflateException;

    invoke-virtual {p2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 97
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p2
.end method
