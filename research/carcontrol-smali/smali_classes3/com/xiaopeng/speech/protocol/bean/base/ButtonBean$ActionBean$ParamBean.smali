.class public Lcom/xiaopeng/speech/protocol/bean/base/ButtonBean$ActionBean$ParamBean;
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
    name = "ParamBean"
.end annotation


# instance fields
.field public antlr:Ljava/lang/String;

.field public command:Ljava/lang/String;

.field public req:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
