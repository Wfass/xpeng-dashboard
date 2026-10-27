.class public Lcom/xiaopeng/commonfunc/Constant$OTA;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OTA"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.xiaopeng.ota.OTAService"

.field public static final GET_OTA_STATE:Ljava/lang/String; = "getOTAState"

.field public static final OTA_STATE_IDLE:I = 0x1

.field public static final OTA_STATE_START:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
