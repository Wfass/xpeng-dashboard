.class public Lcom/xiaopeng/speech/protocol/bean/card/CardBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "CardBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean;
    }
.end annotation


# instance fields
.field public cardContent:Lcom/xiaopeng/speech/protocol/bean/card/CardBean$CardContentBean;

.field public relateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;",
            ">;"
        }
    .end annotation
.end field

.field public relateText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    return-void
.end method
