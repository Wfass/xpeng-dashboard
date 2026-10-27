.class public final Lcom/xiaopeng/carcontrol/provider/CarControl;
.super Ljava/lang/Object;
.source "CarControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueCache;,
        Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;,
        Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;,
        Lcom/xiaopeng/carcontrol/provider/CarControl$System;,
        Lcom/xiaopeng/carcontrol/provider/CarControl$NameValueTable;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.xiaopeng.carcontrol"

.field static final CALL_METHOD_GET_PRIVATE:Ljava/lang/String; = "GET_private"

.field static final CALL_METHOD_GET_QUICK:Ljava/lang/String; = "GET_quick"

.field static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field static final CALL_METHOD_PUT_PRIVATE:Ljava/lang/String; = "PUT_private"

.field static final CALL_METHOD_PUT_QUICK:Ljava/lang/String; = "PUT_quick"

.field static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field private static final TAG:Ljava/lang/String; = "CarControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
