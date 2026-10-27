.class public Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean;
.super Ljava/lang/Object;
.source "CardBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/card/CardBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardContentBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean;
    }
.end annotation


# instance fields
.field public cardType:Ljava/lang/String;

.field public data:Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
