.class public Lcom/xiaopeng/speech/protocol/bean/DataAuthorChangeEvent;
.super Ljava/lang/Object;
.source "DataAuthorChangeEvent.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/DataAuthorChangeEvent;->type:I

    .line 10
    return-void
.end method
