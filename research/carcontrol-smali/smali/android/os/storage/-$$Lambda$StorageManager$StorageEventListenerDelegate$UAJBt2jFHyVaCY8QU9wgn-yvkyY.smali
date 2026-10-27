.class public final synthetic Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic f$1:Landroid/os/storage/DiskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;->f$1:Landroid/os/storage/DiskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$UAJBt2jFHyVaCY8QU9wgn-yvkyY;->f$1:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onDiskDestroyed$6$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;)V

    return-void
.end method
