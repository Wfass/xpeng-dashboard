.class public Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
.super Ljava/lang/Object;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarCallbackRecord"
.end annotation


# instance fields
.field public mCallback:Ljava/lang/Object;

.field public mEventTick:J

.field public mProp:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "callback"    # Ljava/lang/Object;
    .param p3, "tick"    # J

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mProp:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mCallback:Ljava/lang/Object;

    .line 82
    iput-wide p3, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;->mEventTick:J

    .line 83
    return-void
.end method
