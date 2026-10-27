.class final Lcom/xiaopeng/musicradio/page/APMPageMonitor$Holder;
.super Ljava/lang/Object;
.source "APMPageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/page/APMPageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaopeng/musicradio/page/APMPageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;-><init>(Lcom/xiaopeng/musicradio/page/APMPageMonitor$1;)V

    sput-object v0, Lcom/xiaopeng/musicradio/page/APMPageMonitor$Holder;->INSTANCE:Lcom/xiaopeng/musicradio/page/APMPageMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
