.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "av"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 723
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;->a:Ljava/lang/String;

    return-void
.end method
