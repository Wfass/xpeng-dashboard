.class public Lcom/amap/api/services/a/ac;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private eV:Lcom/amap/api/services/a/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/services/a/w;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    iput-object p5, p0, Lcom/amap/api/services/a/ac;->eV:Lcom/amap/api/services/a/w;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/a/ac;->eV:Lcom/amap/api/services/a/w;

    invoke-interface {v0, p1}, Lcom/amap/api/services/a/w;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amap/api/services/a/ac;->eV:Lcom/amap/api/services/a/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/services/a/w;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 145
    return-void
.end method
