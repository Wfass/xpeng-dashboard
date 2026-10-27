.class public Lcom/android/car/systeminterface/IOInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "IOInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/IOInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/IOInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# instance fields
.field private final mFilesDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/systeminterface/IOInterface$DefaultImpl;->mFilesDir:Ljava/io/File;

    .line 33
    return-void
.end method


# virtual methods
.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/car/systeminterface/IOInterface$DefaultImpl;->mFilesDir:Ljava/io/File;

    return-object v0
.end method
