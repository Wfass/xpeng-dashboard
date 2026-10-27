.class public Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean$DataBean;
.super Ljava/lang/Object;
.source "ButtonBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public param:Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean$ParamBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
