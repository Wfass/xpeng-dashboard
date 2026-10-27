.class Laql$2$1;
.super Ljava/lang/Object;
.source "XmlyLoginFlowDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laql$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Laql$2;


# direct methods
.method constructor <init>(Laql$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 119
    iput-object p1, p0, Laql$2$1;->b:Laql$2;

    iput-object p2, p0, Laql$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Laql$2$1;->b:Laql$2;

    iget-object v0, v0, Laql$2;->b:Laql;

    iget-object v1, p0, Laql$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Laql;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
