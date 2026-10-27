.class public Lcom/xiaopeng/xuiservice/mediacenter/Constants$MediaLaunchPolicy;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaLaunchPolicy"
.end annotation


# static fields
.field public static final ACTION_LAUNCH_MUSIC:Ljava/lang/String; = "com.xiaopeng.xui.media.PLAY_COMMAND"

.field public static final ACTIVITY_LAUNCH:I = 0x2

.field public static final BROADCAST_LAUNCH:I = 0x1

.field public static final KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final NONE:I = 0x0

.field public static final RESUME_LAUNCH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
