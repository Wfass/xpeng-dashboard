.class public abstract Lcom/xiaopeng/speech/protocol/node/userbook/AbsUserBookListener;
.super Ljava/lang/Object;
.source "AbsUserBookListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/userbook/UserBookListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V
    .locals 0
    .param p1, "userBookValue"    # Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    .line 10
    return-void
.end method

.method public onCloseUserBook()V
    .locals 0

    .line 20
    return-void
.end method

.method public onOpenUserBook()V
    .locals 0

    .line 15
    return-void
.end method
