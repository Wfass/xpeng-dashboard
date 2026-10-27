.class Lbsv$a;
.super Ljava/lang/Object;
.source "SongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lbsv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lbsv;

    invoke-direct {v0}, Lbsv;-><init>()V

    sput-object v0, Lbsv$a;->a:Lbsv;

    return-void
.end method
