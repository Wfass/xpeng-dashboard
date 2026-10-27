.class Lcom/android/car/CarUxRestrictionsServiceHelper;
.super Ljava/lang/Object;
.source "CarUxRestrictionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;,
        Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;,
        Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;
    }
.end annotation


# static fields
.field private static final CONTENT_RESTRICTIONS:Ljava/lang/String; = "ContentRestrictions"

.field private static final DRIVING_STATE:Ljava/lang/String; = "DrivingState"

.field private static final RESTRICTIONS:Ljava/lang/String; = "Restrictions"

.field private static final RESTRICTION_MAPPING:Ljava/lang/String; = "RestrictionMapping"

.field private static final RESTRICTION_PARAMETERS:Ljava/lang/String; = "RestrictionParameters"

.field private static final ROOT_ELEMENT:Ljava/lang/String; = "UxRestrictions"

.field private static final STRING_RESTRICTIONS:Ljava/lang/String; = "StringRestrictions"

.field private static final TAG:Ljava/lang/String; = "UxRServiceHelper"

.field private static final UX_RESTRICTIONS_UNKNOWN:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

.field private mRestrictionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmlResource:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlRes"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;-><init>(Lcom/android/car/CarUxRestrictionsServiceHelper;Lcom/android/car/CarUxRestrictionsServiceHelper$1;)V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    .line 75
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mContext:Landroid/content/Context;

    .line 76
    iput p2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mXmlResource:I

    .line 77
    return-void
.end method

.method private addToRestrictionsMap(IFFZI)V
    .locals 7
    .param p1, "drivingState"    # I
    .param p2, "minSpeed"    # F
    .param p3, "maxSpeed"    # F
    .param p4, "requiresOpt"    # Z
    .param p5, "restrictions"    # I

    .line 222
    new-instance v6, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;-><init>(Lcom/android/car/CarUxRestrictionsServiceHelper;FFIZ)V

    .line 224
    .local v0, "res":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;

    .line 225
    .local v1, "restrictionsList":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;
    if-nez v1, :cond_0

    .line 226
    new-instance v2, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;-><init>(Lcom/android/car/CarUxRestrictionsServiceHelper;Lcom/android/car/CarUxRestrictionsServiceHelper$1;)V

    move-object v1, v2

    .line 228
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->addRestrictions(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;)V

    .line 229
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method private static getDrivingStateName(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 331
    packed-switch p0, :pswitch_data_0

    .line 339
    const-string v0, "unknown"

    return-object v0

    .line 337
    :pswitch_0
    const-string v0, "moving"

    return-object v0

    .line 335
    :pswitch_1
    const-string v0, "idling"

    return-object v0

    .line 333
    :pswitch_2
    const-string v0, "parked"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapDrivingStateToRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z
    .locals 13
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 138
    :cond_0
    const-string v1, "RestrictionMapping"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "UxRServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parser not at RestrictionMapping element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0

    .line 142
    :cond_1
    const-string v1, "DrivingState"

    invoke-direct {p0, p1, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->traverseToTag(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    const-string v1, "UxRServiceHelper"

    const-string v2, "No <DrivingState> tag in XML"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v0

    .line 147
    :cond_2
    :goto_0
    const-string v1, "DrivingState"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 148
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 150
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v4, Lcom/android/car/R$styleable;->UxRestrictions_DrivingState:[I

    invoke-virtual {v1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 152
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 153
    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 155
    .local v11, "drivingState":I
    nop

    .line 156
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 160
    .local v2, "minSpeed":F
    nop

    .line 161
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 165
    .local v3, "maxSpeed":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    const-string v5, "Restrictions"

    invoke-direct {p0, p1, v5}, Lcom/android/car/CarUxRestrictionsServiceHelper;->traverseToTag(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 169
    const-string v4, "UxRServiceHelper"

    const-string v5, "No <Restrictions> tag in XML"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0

    .line 174
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarUxRestrictionsServiceHelper;->parseRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v12

    .line 175
    .local v12, "restrictions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    const-string v5, "UxRServiceHelper"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    const-string v5, "UxRServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Map "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_4
    if-eq v11, v4, :cond_5

    if-eqz v12, :cond_5

    .line 182
    iget-object v4, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v4, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 183
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 182
    move-object v5, p0

    move v6, v11

    move v7, v2

    move v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/car/CarUxRestrictionsServiceHelper;->addToRestrictionsMap(IFFZI)V

    .line 186
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "minSpeed":F
    .end local v3    # "maxSpeed":F
    .end local v11    # "drivingState":I
    .end local v12    # "restrictions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto/16 :goto_0

    .line 188
    :cond_6
    return v2

    .line 134
    :cond_7
    :goto_1
    const-string v1, "UxRServiceHelper"

    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v0
.end method

.method private parseRestrictionParameters(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z
    .locals 9
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 257
    :cond_0
    const-string v1, "RestrictionParameters"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    const-string v1, "UxRServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parser not at RestrictionParameters element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v0

    .line 261
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    .line 262
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 264
    .local v1, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v4, "RestrictionParameters"

    .line 265
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    return v2

    .line 268
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4784c920    # 67986.25f

    const/4 v8, -0x1

    if-eq v6, v7, :cond_4

    const v7, 0x5f9644f8

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "StringRestrictions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v0

    goto :goto_2

    :cond_4
    const-string v6, "ContentRestrictions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v8

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 290
    const-string v2, "UxRServiceHelper"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    const-string v2, "UxRServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Restriction Parameters in XML: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 280
    :pswitch_0
    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lcom/android/car/R$styleable;->UxRestrictions_ContentRestrictions:[I

    invoke-virtual {v3, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 282
    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v3, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxCumulativeContentItems:I

    .line 285
    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    .line 286
    invoke-virtual {v4, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxContentDepth:I

    .line 288
    goto :goto_3

    .line 272
    :pswitch_1
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/car/R$styleable;->UxRestrictions_StringRestrictions:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 274
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    .line 275
    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxStringLength:I

    .line 278
    nop

    .line 296
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 297
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    .end local v1    # "type":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_7
    goto/16 :goto_0

    .line 301
    :cond_8
    return v2

    .line 253
    :cond_9
    :goto_4
    const-string v1, "UxRServiceHelper"

    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    const/4 v0, -0x1

    .line 199
    .local v0, "restrictions":I
    const/4 v1, 0x1

    .line 200
    .local v1, "requiresOpt":Z
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    :goto_0
    const-string v2, "Restrictions"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/car/R$styleable;->UxRestrictions_Restrictions:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 209
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x1ff

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 212
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 214
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 216
    .end local v2    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 217
    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 201
    :cond_2
    :goto_1
    const-string v2, "UxRServiceHelper"

    const-string v3, "Invalid Arguments"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x0

    return-object v2
.end method

.method private traverseToTag(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 239
    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    return v3

    .line 243
    :cond_1
    return v0

    .line 235
    .end local v2    # "type":I
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 3
    .param p1, "requiresOpt"    # Z
    .param p2, "uxr"    # I

    .line 382
    if-eqz p2, :cond_0

    .line 383
    const/4 p1, 0x1

    .line 385
    :cond_0
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 387
    .local v0, "builder":Landroid/car/drivingstate/CarUxRestrictions$Builder;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxStringLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxStringLength:I

    invoke-virtual {v0, v1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxCumulativeContentItems:I

    if-eq v1, v2, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxCumulativeContentItems:I

    invoke-virtual {v0, v1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxContentDepth:I

    if-eq v1, v2, :cond_3

    .line 395
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxContentDepth:I

    invoke-virtual {v0, v1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 397
    :cond_3
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 308
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 309
    .local v1, "state":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;

    .line 310
    .local v2, "list":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;
    const-string v3, "==========================================="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    const-string v3, "Driving State to UXR"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/car/CarUxRestrictionsServiceHelper;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " num restrictions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-static {v2}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-static {v2}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;

    .line 316
    .local v4, "r":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Speed Range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMinSpeed:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMaxSpeed:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Requires DO? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mRequiresDistractionOptimization:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " Restrictions: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mRestrictions:I

    .line 319
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    const-string v5, "==========================================="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    .end local v4    # "r":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    goto :goto_1

    .line 323
    .end local v1    # "state":Ljava/lang/Integer;
    .end local v2    # "list":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;
    :cond_0
    goto/16 :goto_0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max String length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxStringLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Cumul Content Items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxCumulativeContentItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Content depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionParameters:Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;

    iget v1, v1, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxContentDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public getUxRestrictions(IF)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 5
    .param p1, "drivingState"    # I
    .param p2, "currentSpeed"    # F

    .line 353
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;

    .line 356
    .local v0, "restrictionsList":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;
    const/16 v1, 0x1ff

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 357
    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 364
    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->access$200(Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;

    .local v3, "restrictions":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    goto :goto_0

    .line 366
    .end local v3    # "restrictions":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsInfo;->findRestrictions(F)Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;

    move-result-object v3

    .line 368
    .restart local v3    # "restrictions":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    :goto_0
    if-eqz v3, :cond_2

    .line 369
    iget-boolean v1, v3, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mRequiresDistractionOptimization:Z

    iget v2, v3, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mRestrictions:I

    invoke-virtual {p0, v1, v2}, Lcom/android/car/CarUxRestrictionsServiceHelper;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    return-object v1

    .line 372
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    return-object v1

    .line 358
    .end local v3    # "restrictions":Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
    :cond_3
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    return-object v1
.end method

.method public loadUxRestrictionsFromXml()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mRestrictionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper;->mXmlResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 87
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 90
    .local v1, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    .end local v3    # "type":I
    goto :goto_0

    .line 93
    .restart local v3    # "type":I
    :cond_0
    const-string v2, "UxRestrictions"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 94
    const-string v2, "UxRServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML root element invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v6

    .line 100
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 101
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x2081b2b6

    if-eq v8, v9, :cond_3

    const v9, 0x6338bb82

    if-eq v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const-string v8, "RestrictionMapping"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v7, v6

    goto :goto_2

    :cond_3
    const-string v8, "RestrictionParameters"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v7, v5

    :cond_4
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 120
    const-string v2, "UxRServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->parseRestrictionParameters(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    const-string v2, "UxRServiceHelper"

    const/4 v7, 0x4

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "UxRServiceHelper"

    const-string v7, "Error reading restrictions parameters.  Falling back to platform defaults."

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/car/CarUxRestrictionsServiceHelper;->mapDrivingStateToRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    return v6

    .line 124
    :cond_5
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
