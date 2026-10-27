.class Lard$2;
.super Ljava/lang/Object;
.source "MyOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lard;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lard;


# direct methods
.method constructor <init>(Lard;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lard$2;->a:Lard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 130
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0}, Larg;->c()V

    .line 131
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->c()V

    return-void
.end method
