.class public Lcom/xiaopeng/musicradio/event/common/b$e;
.super Ljava/lang/Object;
.source "UiCommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/b$e;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/b$e;->a:I

    return v0
.end method
