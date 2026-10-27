.class public interface abstract Lcom/xiaopeng/xvs/xid/account/api/LoginConstant;
.super Ljava/lang/Object;
.source "LoginConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xvs/xid/account/api/LoginConstant$LogoutType;,
        Lcom/xiaopeng/xvs/xid/account/api/LoginConstant$LoginType;
    }
.end annotation


# static fields
.field public static final TYPE_LOGIN_BT_KEY:I = 0x5

.field public static final TYPE_LOGIN_FACE_ID:I = 0x4

.field public static final TYPE_LOGIN_MESSAGE_PUSH:I = 0x2

.field public static final TYPE_LOGIN_MQTT_PUSH:I = 0x3

.field public static final TYPE_LOGIN_QR_SCAN:I = 0x1

.field public static final TYPE_LOGOUT_ACTIVE:I = 0x1

.field public static final TYPE_LOGOUT_EXCEPTION:I = 0x6

.field public static final TYPE_LOGOUT_INTERRUPT:I = 0x5

.field public static final TYPE_LOGOUT_MESSAGE_PUSH:I = 0x2

.field public static final TYPE_LOGOUT_MQTT_PUSH:I = 0x3

.field public static final TYPE_LOGOUT_OVER_TIME:I = 0x4
