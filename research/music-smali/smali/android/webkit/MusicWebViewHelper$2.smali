.class final Landroid/webkit/MusicWebViewHelper$2;
.super Ljava/lang/Object;
.source "MusicWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/MusicWebViewHelper;->getProviderInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$provider:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/webkit/MusicWebViewHelper$2;->val$provider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/webkit/MusicWebViewHelper$2;->val$provider:Ljava/lang/Object;

    invoke-static {v0}, Landroid/webkit/MusicWebViewHelper;->access$100(Ljava/lang/Object;)V

    return-void
.end method
