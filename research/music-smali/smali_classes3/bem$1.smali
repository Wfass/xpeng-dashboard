.class Lbem$1;
.super Ljava/lang/Object;
.source "NeteaseManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbem;->receiveMusicBinded(Lasj$t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbem;


# direct methods
.method constructor <init>(Lbem;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lbem$1;->a:Lbem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 48
    iget-object v0, p0, Lbem$1;->a:Lbem;

    invoke-static {v0}, Lbem;->a(Lbem;)V

    return-void
.end method
