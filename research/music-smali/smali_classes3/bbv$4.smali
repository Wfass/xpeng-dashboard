.class Lbbv$4;
.super Ljava/lang/Object;
.source "IcmControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbv;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbbv;


# direct methods
.method constructor <init>(Lbbv;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lbbv$4;->b:Lbbv;

    iput p2, p0, Lbbv$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget v0, p0, Lbbv$4;->a:I

    const/16 v1, 0x20f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lbbv$4;->b:Lbbv;

    invoke-virtual {v0, v2, v2}, Lbbv;->a(II)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lbbv$4;->b:Lbbv;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lbbv;->a(II)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lbbv$4;->b:Lbbv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lbbv;->a(II)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lbbv$4;->b:Lbbv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lbbv;->a(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1fc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
