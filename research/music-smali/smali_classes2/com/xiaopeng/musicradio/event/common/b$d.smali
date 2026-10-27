.class public Lcom/xiaopeng/musicradio/event/common/b$d;
.super Ljava/lang/Object;
.source "UiCommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/b$d;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/b$d;->a:Z

    return v0
.end method
