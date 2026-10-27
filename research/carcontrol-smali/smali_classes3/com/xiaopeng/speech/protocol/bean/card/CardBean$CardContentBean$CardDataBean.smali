.class public Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean;
.super Ljava/lang/Object;
.source "CardBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardDataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean$MediaBean;
    }
.end annotation


# instance fields
.field public buttonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;",
            ">;"
        }
    .end annotation
.end field

.field public detail:Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;

.field public media:Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean$MediaBean;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public tts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
