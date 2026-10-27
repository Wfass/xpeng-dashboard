.class Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;
.super Ljava/lang/Object;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderRecord"
.end annotation


# instance fields
.field public mEventTick:J

.field public mInfo:Ljava/lang/String;

.field public mModule:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "tick"    # J

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mModule:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mInfo:Ljava/lang/String;

    .line 94
    iput-wide p3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$BinderRecord;->mEventTick:J

    .line 95
    return-void
.end method
