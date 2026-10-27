.class Lbek$1;
.super Ljava/lang/Object;
.source "KugouManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbek;->receiveMusicBinded(Lasj$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbek;


# direct methods
.method constructor <init>(Lbek;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lbek$1;->a:Lbek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lbek$1;->a:Lbek;

    invoke-static {v0}, Lbek;->a(Lbek;)V

    return-void
.end method
