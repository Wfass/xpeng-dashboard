.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bd"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;->a:Z

    return-void
.end method
