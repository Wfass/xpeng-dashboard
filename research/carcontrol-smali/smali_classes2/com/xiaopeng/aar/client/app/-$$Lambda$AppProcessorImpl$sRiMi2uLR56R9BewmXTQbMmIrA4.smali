.class public final synthetic Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/client/ApiListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[B


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$0:Lcom/xiaopeng/aar/client/ApiListener;

    iput-object p2, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$5:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$0:Lcom/xiaopeng/aar/client/ApiListener;

    iget-object v1, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$sRiMi2uLR56R9BewmXTQbMmIrA4;->f$5:[B

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->lambda$onReceived$0(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
