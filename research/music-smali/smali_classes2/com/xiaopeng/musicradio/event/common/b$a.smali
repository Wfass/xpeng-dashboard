.class public Lcom/xiaopeng/musicradio/event/common/b$a;
.super Ljava/lang/Object;
.source "UiCommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/b$a;->a:I

    .line 102
    iput-object p2, p0, Lcom/xiaopeng/musicradio/event/common/b$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/b$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/b$a;->b:Ljava/lang/String;

    return-object v0
.end method
