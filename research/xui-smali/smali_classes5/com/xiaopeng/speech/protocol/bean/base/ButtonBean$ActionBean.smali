.class public Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean;
.super Ljava/lang/Object;
.source "ButtonBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean$ParamBean;,
        Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean$DataBean;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
