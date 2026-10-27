.class public Lcom/xiaopeng/lib/framework/moduleinterface/demoservice/IDemoService$DemoMessageEvent;
.super Ljava/lang/Object;
.source "IDemoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/demoservice/IDemoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemoMessageEvent"
.end annotation


# instance fields
.field public mEvent:Ljava/lang/String;

.field public mParam1:J

.field public mParam2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
