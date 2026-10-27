.class Lcom/android/car/XpVehicleService$OutMessage;
.super Ljava/lang/Object;
.source "XpVehicleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpVehicleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutMessage"
.end annotation


# instance fields
.field public Data:[B

.field final synthetic this$0:Lcom/android/car/XpVehicleService;


# direct methods
.method public constructor <init>(Lcom/android/car/XpVehicleService;)V
    .locals 0

    .line 14311
    iput-object p1, p0, Lcom/android/car/XpVehicleService$OutMessage;->this$0:Lcom/android/car/XpVehicleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14312
    invoke-static {}, Lcom/android/car/XpVehicleService;->access$000()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/car/XpVehicleService$OutMessage;->Data:[B

    .line 14313
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 14321
    iget-object v0, p0, Lcom/android/car/XpVehicleService$OutMessage;->Data:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 14316
    iput-object p1, p0, Lcom/android/car/XpVehicleService$OutMessage;->Data:[B

    .line 14317
    return-void
.end method
