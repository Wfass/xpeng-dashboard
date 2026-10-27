.class public Lcom/xiaopeng/devtools/bean/event/CommonEvent;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# static fields
.field public static final DIAGNOSIS_ACTION_PAUSE:I = 0x2712

.field public static final HTTP_PING_EVENT:I = 0x2711


# instance fields
.field private mMsg:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/xiaopeng/devtools/bean/event/CommonEvent;->mState:I

    .line 17
    iput-object p2, p0, Lcom/xiaopeng/devtools/bean/event/CommonEvent;->mMsg:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/CommonEvent;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaopeng/devtools/bean/event/CommonEvent;->mState:I

    return v0
.end method
