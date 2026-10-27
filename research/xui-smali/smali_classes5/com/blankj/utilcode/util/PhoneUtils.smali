.class public final Lcom/blankj/utilcode/util/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static call(Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CALL_PHONE"
    .end annotation

    .line 304
    if-eqz p0, :cond_0

    .line 305
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'phoneNumber\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dial(Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getDialIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'phoneNumber\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 53
    const-string v0, ""

    return-object v0

    .line 55
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 56
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 58
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4

    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "meid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    return-object v4

    .line 64
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "meid":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    return-object v2
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getImeiOrMeid(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 215
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 218
    const-string v1, ""

    return-object v1

    .line 221
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiOrMeid(Z)Ljava/lang/String;
    .locals 13
    .param p0, "isImei"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 114
    const-string v0, ""

    return-object v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 117
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    .line 118
    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_1
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v5, 0xe

    const/16 v6, 0xf

    if-lt v1, v2, :cond_b

    .line 124
    if-eqz p0, :cond_3

    const-string v1, "ril.gsm.imei"

    goto :goto_0

    :cond_3
    const-string v1, "ril.cdma.meid"

    :goto_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/PhoneUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "ids":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v7, 0x2

    if-nez v2, :cond_5

    .line 126
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "idArr":[Ljava/lang/String;
    array-length v5, v2

    if-ne v5, v7, :cond_4

    .line 128
    aget-object v4, v2, v4

    aget-object v3, v2, v3

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 130
    :cond_4
    aget-object v3, v2, v4

    return-object v3

    .line 134
    .end local v2    # "idArr":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "id0":Ljava/lang/String;
    const-string v8, ""

    .line 137
    .local v8, "id1":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getDeviceId"

    new-array v11, v3, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 138
    .local v9, "method":Ljava/lang/reflect/Method;
    new-array v10, v3, [Ljava/lang/Object;

    if-eqz p0, :cond_6

    goto :goto_1

    .line 139
    :cond_6
    move v3, v7

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    .line 138
    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v3

    .line 147
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_3

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_3

    .line 143
    :catch_1
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 141
    :catch_2
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 148
    :goto_3
    if-eqz p0, :cond_8

    .line 149
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_7

    .line 150
    const-string v2, ""

    .line 152
    :cond_7
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_a

    .line 153
    const-string v8, ""

    goto :goto_4

    .line 156
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 157
    const-string v2, ""

    .line 159
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 160
    const-string v8, ""

    .line 163
    :cond_a
    :goto_4
    invoke-static {v2, v8}, Lcom/blankj/utilcode/util/PhoneUtils;->getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 165
    .end local v1    # "ids":Ljava/lang/String;
    .end local v2    # "id0":Ljava/lang/String;
    .end local v8    # "id1":Ljava/lang/String;
    :cond_b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz p0, :cond_c

    .line 167
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_d

    .line 168
    return-object v1

    .line 171
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_d

    .line 172
    return-object v1

    .line 176
    .end local v1    # "deviceId":Ljava/lang/String;
    :cond_d
    const-string v1, ""

    return-object v1
.end method

.method public static getMEID()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PhoneUtils;->getImeiOrMeid(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMinOne(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s0"    # Ljava/lang/String;
    .param p1, "s1"    # Ljava/lang/String;

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 181
    .local v0, "empty0":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 182
    .local v1, "empty1":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    return-object v2

    .line 183
    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 185
    return-object p0

    .line 187
    :cond_1
    return-object p1

    .line 190
    :cond_2
    if-nez v0, :cond_3

    return-object p0

    .line 191
    :cond_3
    return-object p1
.end method

.method public static getPhoneType()I
    .locals 2

    .line 236
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 237
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    return v1
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 77
    :try_start_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 80
    const-string v1, ""

    return-object v1

    .line 83
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getSimOperatorByMnc()Ljava/lang/String;
    .locals 5

    .line 266
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 267
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "operator":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v2, ""

    return-object v2

    .line 269
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x2f60c77

    if-eq v3, v4, :cond_3

    const v4, 0x2f60c8e

    if-eq v3, v4, :cond_2

    const v4, 0x2f60cac

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v3, "46007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const-string v3, "46006"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :pswitch_2
    const-string v3, "46005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x8

    goto :goto_0

    :pswitch_3
    const-string v3, "46003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x7

    goto :goto_0

    :pswitch_4
    const-string v3, "46002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_5
    const-string v3, "46001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_6
    const-string v3, "46000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "46020"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const-string v3, "46011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    const-string v3, "46009"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_2

    .line 284
    return-object v1

    .line 282
    :pswitch_7
    const-string v2, "\u4e2d\u56fd\u7535\u4fe1"

    return-object v2

    .line 278
    :pswitch_8
    const-string v2, "\u4e2d\u56fd\u8054\u901a"

    return-object v2

    .line 274
    :pswitch_9
    const-string v2, "\u4e2d\u56fd\u79fb\u52a8"

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2f60c6e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f60c73
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getSimOperatorName()Ljava/lang/String;
    .locals 2

    .line 256
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 257
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .line 197
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 199
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 200
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 201
    const-string v0, ""

    return-object v0
.end method

.method private static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 319
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static isPhone()Z
    .locals 2

    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 39
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSimCardReady()Z
    .locals 3

    .line 246
    invoke-static {}, Lcom/blankj/utilcode/util/PhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 247
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "content"    # Ljava/lang/String;

    .line 314
    if-eqz p0, :cond_0

    .line 315
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 316
    return-void

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'phoneNumber\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
