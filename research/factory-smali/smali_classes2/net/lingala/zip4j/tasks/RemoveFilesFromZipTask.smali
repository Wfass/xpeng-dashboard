.class public Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<",
        "Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p3, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .line 28
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 29
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 30
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 31
    return-void
.end method

.method private filterNonExistingEntries(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 86
    .local p1, "filesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "filteredFilesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "fileToRemove":Ljava/lang/String;
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v2    # "fileToRemove":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method

.method private negate(J)J
    .locals 2
    .param p1, "val"    # J

    .line 140
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 144
    neg-long v0, p1

    return-wide v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldEntryBeRemoved(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/List;)Z
    .locals 4
    .param p1, "fileHeaderToBeChecked"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 98
    .local p2, "fileNamesToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "fileNameToBeRemoved":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    return v3

    .line 104
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    return v3

    .line 107
    .end local v1    # "fileNameToBeRemoved":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private updateHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;J)V
    .locals 6
    .param p2, "fileHeaderThatWasRemoved"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "offsetToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 114
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->negate(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 116
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    .line 117
    .local v0, "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    nop

    .line 118
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v1

    sub-long/2addr v1, p3

    .line 117
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 119
    nop

    .line 120
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 119
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 122
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I

    move-result v1

    if-lez v1, :cond_0

    .line 123
    nop

    .line 124
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 123
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 127
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 129
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v2

    sub-long/2addr v2, p3

    .line 128
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 131
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 132
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 131
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 134
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 135
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v2

    sub-long/2addr v2, p3

    .line 134
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->executeTask(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 25
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 36
    iget-object v0, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 40
    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->filterNonExistingEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 42
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    iget-object v0, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->getTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 47
    .local v13, "temporaryZipFile":Ljava/io/File;
    const/4 v0, 0x0

    move v14, v0

    .line 49
    .local v14, "successFlag":Z
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-direct {v0, v13}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object v15, v0

    .line 50
    .local v15, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    const/16 v16, 0x0

    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object v9, v0

    .line 49
    .local v9, "inputStream":Ljava/io/RandomAccessFile;
    nop

    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .local v0, "currentFileCopyPointer":J
    :try_start_2
    iget-object v2, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v10, v2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    .line 55
    .local v8, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v17, v0

    .end local v0    # "currentFileCopyPointer":J
    .local v17, "currentFileCopyPointer":J
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 56
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    iget-object v1, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v10, v8, v0, v1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v1

    invoke-virtual {v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v19, v13

    move/from16 v20, v14

    sub-long v13, v1, v3

    .line 57
    .end local v14    # "successFlag":Z
    .local v13, "lengthOfCurrentEntry":J
    .local v19, "temporaryZipFile":Ljava/io/File;
    .local v20, "successFlag":Z
    :try_start_4
    invoke-direct {v10, v0, v12}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->shouldEntryBeRemoved(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/List;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 58
    :try_start_5
    invoke-direct {v10, v8, v0, v13, v14}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->updateHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 60
    iget-object v1, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    add-long v17, v17, v13

    .line 70
    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v12

    move-object v12, v9

    goto :goto_1

    .line 61
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Could not remove entry from list of central directory headers"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .end local v13    # "lengthOfCurrentEntry":J
    .end local v17    # "currentFileCopyPointer":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v24, v12

    move-object/from16 v3, v16

    move-object/from16 v1, v19

    move-object v12, v9

    goto/16 :goto_3

    .line 49
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v24, v12

    move-object/from16 v1, v19

    move-object v12, v9

    goto/16 :goto_2

    .line 67
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v13    # "lengthOfCurrentEntry":J
    .restart local v17    # "currentFileCopyPointer":J
    :cond_2
    :try_start_6
    iget-object v1, v11, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v21
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 67
    move-object v1, v10

    move-object v2, v9

    move-object v3, v15

    move-wide/from16 v4, v17

    move-object/from16 v22, v6

    move-wide v6, v13

    move-object/from16 v23, v8

    move-object/from16 v8, p2

    .end local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .local v23, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    move-object/from16 v24, v12

    move-object v12, v9

    move/from16 v9, v21

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .local v24, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_7
    invoke-super/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long v17, v17, v1

    .line 70
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->verifyIfTaskIsCancelled()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 71
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v13    # "lengthOfCurrentEntry":J
    nop

    .line 55
    move-object v9, v12

    move-object/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    move-object/from16 v12, v24

    goto/16 :goto_0

    .line 75
    .end local v17    # "currentFileCopyPointer":J
    .end local v23    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v16

    move-object/from16 v1, v19

    goto/16 :goto_3

    .line 49
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto/16 :goto_2

    .line 75
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v24, v12

    move-object v12, v9

    move-object v2, v0

    move-object/from16 v3, v16

    move-object/from16 v1, v19

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_3

    .line 49
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v0

    move-object/from16 v24, v12

    move-object v12, v9

    move-object v2, v0

    move-object/from16 v1, v19

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2

    .line 75
    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    :catchall_3
    move-exception v0

    move-object/from16 v24, v12

    move/from16 v20, v14

    move-object v12, v9

    move-object v2, v0

    move-object v1, v13

    move-object/from16 v3, v16

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v20    # "successFlag":Z
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_3

    .line 49
    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    :catch_3
    move-exception v0

    move-object/from16 v24, v12

    move/from16 v20, v14

    move-object v12, v9

    move-object v2, v0

    move-object v1, v13

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v20    # "successFlag":Z
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_2

    .line 73
    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    .restart local v17    # "currentFileCopyPointer":J
    :cond_3
    move-object/from16 v23, v8

    move-object/from16 v24, v12

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-object v12, v9

    .end local v8    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v20    # "successFlag":Z
    .restart local v23    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_8
    iget-object v0, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, v11, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v15, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 74
    const/4 v14, 0x1

    .line 75
    .end local v17    # "currentFileCopyPointer":J
    .end local v20    # "successFlag":Z
    .end local v23    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    .restart local v14    # "successFlag":Z
    :try_start_9
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .end local v12    # "inputStream":Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 76
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    iget-object v0, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v10, v14, v0, v1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 77
    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .local v1, "temporaryZipFile":Ljava/io/File;
    nop

    .line 78
    return-void

    .line 76
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v1, v19

    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    goto/16 :goto_8

    .line 75
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v15    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    :catchall_5
    move-exception v0

    move-object/from16 v1, v19

    move-object v2, v0

    move-object/from16 v3, v16

    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    goto/16 :goto_6

    .line 49
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object/from16 v1, v19

    move-object/from16 v16, v0

    move/from16 v20, v14

    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    goto/16 :goto_5

    .line 75
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .restart local v12    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v20    # "successFlag":Z
    :catchall_6
    move-exception v0

    move-object/from16 v1, v19

    move-object v2, v0

    move-object/from16 v3, v16

    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    goto :goto_3

    .line 49
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v19    # "temporaryZipFile":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v1, v19

    move-object v2, v0

    .end local v19    # "temporaryZipFile":Ljava/io/File;
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    goto :goto_2

    .line 75
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    :catchall_7
    move-exception v0

    move-object/from16 v24, v12

    move-object v1, v13

    move/from16 v20, v14

    move-object v12, v9

    move-object v2, v0

    move-object/from16 v3, v16

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v20    # "successFlag":Z
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 49
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    :catch_6
    move-exception v0

    move-object/from16 v24, v12

    move-object v1, v13

    move/from16 v20, v14

    move-object v12, v9

    move-object v2, v0

    .end local v9    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    .local v12, "inputStream":Ljava/io/RandomAccessFile;
    .restart local v20    # "successFlag":Z
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 75
    :catchall_8
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_3
    if-eqz v3, :cond_4

    :try_start_c
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v4, v0

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    :goto_4
    throw v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 49
    .end local v12    # "inputStream":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object/from16 v16, v0

    goto :goto_5

    .line 75
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    :catchall_9
    move-exception v0

    move-object/from16 v24, v12

    move-object v1, v13

    move/from16 v20, v14

    move-object v2, v0

    move-object/from16 v3, v16

    .end local v12    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v20    # "successFlag":Z
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_6

    .line 49
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v20    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v14    # "successFlag":Z
    :catch_9
    move-exception v0

    move-object/from16 v24, v12

    move-object v1, v13

    move/from16 v20, v14

    move-object/from16 v16, v0

    .end local v12    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v20    # "successFlag":Z
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    :try_start_e
    throw v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 75
    :catchall_a
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v16

    move/from16 v14, v20

    .end local v20    # "successFlag":Z
    .restart local v14    # "successFlag":Z
    :goto_6
    if-eqz v3, :cond_5

    :try_start_f
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_5
    invoke-virtual {v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    :goto_7
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 76
    .end local v15    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :catchall_b
    move-exception v0

    goto :goto_8

    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "temporaryZipFile":Ljava/io/File;
    :catchall_c
    move-exception v0

    move-object/from16 v24, v12

    move-object v1, v13

    move/from16 v20, v14

    .end local v12    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "temporaryZipFile":Ljava/io/File;
    .restart local v1    # "temporaryZipFile":Ljava/io/File;
    .restart local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    iget-object v2, v10, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v10, v14, v2, v1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 77
    throw v0

    .line 37
    .end local v1    # "temporaryZipFile":Ljava/io/File;
    .end local v14    # "successFlag":Z
    .end local v24    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 149
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
