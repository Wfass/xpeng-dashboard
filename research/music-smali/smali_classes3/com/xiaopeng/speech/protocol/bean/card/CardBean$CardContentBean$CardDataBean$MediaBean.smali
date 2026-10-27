.class public Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean$MediaBean;
.super Ljava/lang/Object;
.source "CardBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean$CardDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBean"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_list:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
