.class public Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;
.super Ljava/lang/Object;
.source "DuiSemanticBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicSearchPlayBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;
    }
.end annotation


# instance fields
.field private intentConfidence:D

.field private intentName:Ljava/lang/String;

.field private slotConfidence:I

.field private slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentConfidence()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->intentConfidence:D

    return-wide v0
.end method

.method public getIntentName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->intentName:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotConfidence()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->slotConfidence:I

    return v0
.end method

.method public getSlots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->slots:Ljava/util/List;

    return-object v0
.end method

.method public setIntentConfidence(D)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->intentConfidence:D

    return-void
.end method

.method public setIntentName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->intentName:Ljava/lang/String;

    return-void
.end method

.method public setSlotConfidence(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->slotConfidence:I

    return-void
.end method

.method public setSlots(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->slots:Ljava/util/List;

    return-void
.end method
