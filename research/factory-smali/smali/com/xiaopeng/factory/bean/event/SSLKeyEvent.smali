.class public Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;
.super Ljava/lang/Object;
.source "SSLKeyEvent.java"


# static fields
.field public static final CDU_KEY_SERVER_CONNECTION_ERROR:I = 0x2

.field public static final PSU_ACTIVATE_FAIL:I = 0x8

.field public static final PSU_ID_GET_FAIL:I = 0x7

.field public static final PSU_ID_ILLEGAL:I = 0x9

.field public static final PSU_KEY_RESET_FAIL:I = 0x4

.field public static final PSU_REPAIR_FINISH:I = 0xa

.field public static final PSU_REQUEST_SERVER_FAIL:I = 0xb

.field public static final REQUEST_CDU_KEY_ERROR:I = 0x3

.field public static final REQUEST_TBOX_KEY_ERROR:I = 0xd

.field public static final REQUEST_WIFI_KEY_ERROR:I = 0x6

.field public static final SAVE_TBOX_KEY_FAIL:I = 0xe

.field public static final TBOX_KEY_SERVER_CONNECTION_ERROR:I = 0xc

.field public static final WIFI_CONNECT_ERROR:I = 0x1

.field public static final WIFI_KEY_SERVER_CONNECTION_ERROR:I = 0x5


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;->mState:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "mState"    # I
    .param p2, "mErrorMessage"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;->mState:I

    .line 32
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;->mErrorMessage:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;->mState:I

    return v0
.end method
