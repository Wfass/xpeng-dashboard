.class Lbck$a;
.super Ljava/lang/Object;
.source "NeteaseLocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lbck;

    invoke-direct {v0}, Lbck;-><init>()V

    sput-object v0, Lbck$a;->a:Lbck;

    return-void
.end method
