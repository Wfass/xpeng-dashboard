.class Lorg/chromium/net/AndroidCellularSignalStrength$1;
.super Ljava/lang/Object;
.source "AndroidCellularSignalStrength.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/AndroidCellularSignalStrength;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/AndroidCellularSignalStrength;


# direct methods
.method constructor <init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$1;->a:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    new-instance v0, Lorg/chromium/net/AndroidCellularSignalStrength$a;

    iget-object v1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$1;->a:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {v0, v1}, Lorg/chromium/net/AndroidCellularSignalStrength$a;-><init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V

    return-void
.end method
