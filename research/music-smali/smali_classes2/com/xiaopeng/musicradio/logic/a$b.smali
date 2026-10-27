.class public Lcom/xiaopeng/musicradio/logic/a$b;
.super Ljava/lang/Object;
.source "MusicGlobalLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/logic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/xiaopeng/musicradio/logic/a$b;->a:I

    .line 53
    iput-object p2, p0, Lcom/xiaopeng/musicradio/logic/a$b;->b:Ljava/lang/String;

    return-void
.end method
